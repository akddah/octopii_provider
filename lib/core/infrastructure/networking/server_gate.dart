import 'dart:async';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/app_iterceptor.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServerGate {
  final Dio _dio = Dio();

  ServerGate._() {
    _dio.interceptors.add(AppInterceptors());
  }

  static final ServerGate i = ServerGate._();

    Future<String> getDomain( [bool takeOtherBaseurl = false]) async {
      final url =takeOtherBaseurl? dotenv.get(
                AppConstantStrings.baseUrlTwo
              ) : dotenv.get(AppConstantStrings.baseUrl);
      final i = await SharedPreferences.getInstance();
       if(i.getString('domain')!=null){
         return  url.replaceAll('test-market', i.getString('domain')!);
       }else{
         return  url;
       }


    }

  Future<CustomResponse<T>> sendToServer<T>({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? formData,
  }) async {
    try {
      params?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      headers?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      body?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      formData?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );

      final Response<dynamic> res = await _dio.post(
        url.startsWith('http') ? url : '${await getDomain()}/$url',
        data: formData == null ? (body ?? <String, dynamic>{}) : FormData.fromMap(formData),
        options: Options(
          headers: headers,
          responseType: ResponseType.json,
        ),
        queryParameters: params,
      );

      if (res.data is Map<String, dynamic>) {
        final Map<String, dynamic> responseData = res.data as Map<String, dynamic>;

        if (responseData.containsKey('status') || responseData.containsKey('data')) {
          final String message = responseData['message'] as String? ?? '';
          final dynamic data = responseData['data'];
          return CustomResponse<T>(
            responseState: ResponseState.success,
            success: responseData['status'] as bool? ?? true,
            data: (data is T) ? data : null,
            msg: message,
            statusCode: res.statusCode ?? 200,
          );
        } else {
          AppLogger().info(
            'The Res Data Type Is Inside Else ${res.data is Map<String, dynamic>}',
          );
          return CustomResponse<T>(
            responseState: ResponseState.success,
            success: true,
            data: responseData as T,
            msg: 'Request Successful',
            statusCode: res.statusCode ?? 200,
          );
        }
      } else {
        throw DioException.badResponse(
          statusCode: res.statusCode ?? 422,
          requestOptions: res.requestOptions,
          response: res,
        );
      }
    } on DioException catch (e) {
      return handleServerError(e);
    } catch (e) {
      return CustomResponse<T>(
        statusCode: 422,
        errType: ErrorType.unknown,
        msg: kDebugMode ? '$e' : LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
      );
    }
  }

  Future<CustomResponse<T>> deleteFromServer<T>({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? formData,
  }) async {
    try {
      params?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      headers?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      body?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      formData?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      final Response<dynamic> res = await _dio.delete(
        url.startsWith('http') ? url : '${await getDomain()}/$url',
        data: formData == null ? (body ?? <String, dynamic>{}) : FormData.fromMap(formData),
        options: Options(
          headers: <String, dynamic>{
            if (headers != null) ...headers,
          },
          responseType: ResponseType.json,
        ),
        queryParameters: params,
      );
      if (res.data is Map<String, dynamic>) {
        final Map<String, dynamic> data = res.data as Map<String, dynamic>;

        return CustomResponse<T>(
          responseState: ResponseState.success,
          success: true,
          data: data as T,
          msg: data['message'] as String? ?? '',
          statusCode: 200,
        );
      } else {
        throw DioException.badResponse(
          statusCode: res.statusCode ?? 422,
          requestOptions: res.requestOptions,
          response: res,
        );
      }
    } on DioException catch (e) {
      return handleServerError(e);
    } catch (e) {
      return CustomResponse<T>(
        statusCode: 422,
        errType: ErrorType.unknown,
        msg: kDebugMode ? '$e' : LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
      );
    }
  }

  Future<CustomResponse<T>> getFromServer<T>({
    required String url,
    bool takeOtherBaseurl = false,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool constantHeaders = true,
  }) async {
    try {
      params?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      headers?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      final Response<dynamic> res = await _dio.get(
        url.startsWith('http')
            ? url
            :"${await getDomain(takeOtherBaseurl)}/$url",
        options: Options(
          headers: <String, dynamic>{
            if (headers != null) ...headers,
          },
          responseType: ResponseType.json,
        ),
        queryParameters: params,
      );
      if (res.data is Map<String, dynamic>) {
        final Map<String, dynamic> data = res.data as Map<String, dynamic>;

        return CustomResponse<T>(
          responseState: ResponseState.success,
          success: true,
          data: data['data'] as T,
          msg: data['message'] as String? ?? '',
          statusCode: 200,
        );
      } else {
        throw DioException.badResponse(
          statusCode: res.statusCode ?? 422,
          requestOptions: res.requestOptions,
          response: res,
        );
      }
    } on DioException catch (e) {
      return handleServerError(e);
    } catch (e) {
      return CustomResponse<T>(
        statusCode: 402,
        errType: ErrorType.unknown,
        msg: kDebugMode ? e.toString() : LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
      );
    }
  }

  Future<CustomResponse<T>> putToServer<T>({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? formData,
  }) async {
    try {
      params?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      headers?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      body?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      formData?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      final Response<dynamic> res = await _dio.put(
        url.startsWith('http') ? url : '${await getDomain()}/$url',
        data: formData == null ? (body ?? <String, dynamic>{}) : FormData.fromMap(formData),
        options: Options(
          headers: <String, dynamic>{
            if (headers != null) ...headers,
          },
          responseType: ResponseType.json,
        ),
        queryParameters: params,
      );
      if (res.data is Map<String, dynamic>) {
        final Map<String, dynamic> data = res.data as Map<String, dynamic>;

        return CustomResponse<T>(
          responseState: ResponseState.success,
          success: true,
          data: data as T,
          msg: data['message'] as String? ?? '',
          statusCode: 200,
        );
      } else {
        throw DioException.badResponse(
          statusCode: res.statusCode ?? 422,
          requestOptions: res.requestOptions,
          response: res,
        );
      }
    } on DioException catch (e) {
      return handleServerError(e);
    } catch (e) {
      return CustomResponse<T>(
        statusCode: 422,
        errType: ErrorType.unknown,
        msg: kDebugMode ? '$e' : LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
      );
    }
  }

  Future<CustomResponse<T>> patchToServer<T>({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? formData,
  }) async {
    try {
      params?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      headers?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      body?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      formData?.removeWhere(
        (String key, dynamic value) => value == null || '$value'.isEmpty,
      );
      final Response<dynamic> res = await _dio.patch(
        url.startsWith('http') ? url : '${await getDomain()}/$url',
        data: formData == null ? (body ?? <String, dynamic>{}) : FormData.fromMap(formData),
        options: Options(
          headers: <String, dynamic>{
            if (headers != null) ...headers,
          },
          responseType: ResponseType.json,
        ),
        queryParameters: params,
      );
      if (res.data is Map<String, dynamic>) {
        final Map<String, dynamic> data = res.data as Map<String, dynamic>;

        return CustomResponse<T>(
          responseState: ResponseState.success,
          success: true,
          data: data as T,
          msg: data['message'] as String? ?? '',
          statusCode: 200,
        );
      } else {
        throw DioException.badResponse(
          statusCode: res.statusCode ?? 422,
          requestOptions: res.requestOptions,
          response: res,
        );
      }
    } on DioException catch (e) {
      return handleServerError(e);
    } catch (e) {
      return CustomResponse<T>(
        statusCode: 422,
        errType: ErrorType.unknown,
        msg: kDebugMode ? '$e' : LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
      );
    }
  }

  CustomResponse<T> handleServerError<T>(DioException err) {
    if (err.type == DioExceptionType.badResponse) {
      if ('${err.response?.data}'.isEmpty) {
        return CustomResponse<T>(
          statusCode: 402,
          errType: ErrorType.unknown,
          msg: LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
          data: err.response?.data is T ? err.response?.data as T : null,
        );
      } else if (err.response!.data.toString().contains('DOCTYPE') ||
          err.response!.data.toString().contains('<script>') ||
          (err.response!.data as Map<String, dynamic>)['exception'] != null) {
        return CustomResponse<T>(
          errType: ErrorType.server,
          data: err.response?.data is T ? err.response?.data as T : null,
          statusCode: err.response!.statusCode ?? 500,
          msg: kDebugMode ? '${err.response!.data}' : LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
        );
      } else if (err.response?.statusCode == 401) {
        final Map<String, dynamic> responseData = err.response!.data as Map<String, dynamic>;

        return CustomResponse<T>(
          statusCode: err.response?.statusCode ?? 401,
          errType: ErrorType.unAuth,
          msg: responseData['message'] as String? ?? '',
          data: err.response?.data is T ? err.response?.data as T : null,
        );
      } else {
        final Map<String, dynamic> responseData = err.response!.data as Map<String, dynamic>;

        return CustomResponse<T>(
          statusCode: err.response?.statusCode ?? 500,
          errType: ErrorType.backEndValidation,
          msg: responseData['message'] as String? ?? '',
          data: err.response?.data is T ? err.response?.data as T : null,
        );
      }
    } else if (err.type == DioExceptionType.receiveTimeout || err.type == DioExceptionType.sendTimeout) {
      return CustomResponse<T>(
        statusCode: err.response?.statusCode ?? 500,
        errType: ErrorType.network,
        msg: LocaleKeys.poorConnectionCheckTheQualityOfTheInternet.tr(),
        data: err.response?.data is T ? err.response?.data as T : null,
      );
    } else if (err.response == null) {
      return CustomResponse<T>(
        statusCode: 402,
        errType: ErrorType.network,
        msg: LocaleKeys.pleaseCheckYourInternetConnection.tr(),
        data: err.response?.data is T ? err.response?.data as T : null,
      );
    } else {
      return CustomResponse<T>(
        statusCode: 402,
        errType: ErrorType.unknown,
        msg: LocaleKeys.somethingWentWrongPleaseTryAgain.tr(),
        data: err.response?.data is T ? err.response?.data as T : null,
      );
    }
  }
}

class CustomResponse<T> {
  bool success;
  ErrorType errType;
  String msg;
  int statusCode;
  T? data;
  ResponseState responseState;

  CustomResponse({
    this.success = false,
    this.responseState = ResponseState.error,
    this.errType = ErrorType.none,
    this.msg = '',
    this.statusCode = 0,
    this.data,
  });
}
