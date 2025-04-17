import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/utils/utils/loger.dart';
import 'package:octopii_provier_app/core/const/database_constants.dart';
import 'package:octopii_provier_app/core/helpers/shared_pref_helper.dart';

class AppInterceptors extends Interceptor {
  final LoggerDebug log = LoggerDebug(constTitle: 'Server Gate Logger');

  AppInterceptors();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log.red('------ Current Error Response (status code ${err.response?.statusCode}) -----');
    log.red(jsonEncode(err.response?.data), err.response?.requestOptions.path.replaceAll(dotenv.get(AppConstantStrings.baseUrl), ''));
    log.red(_generateCurlCommand(err.requestOptions));
    return super.onError(err, handler);
  }

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    log.green('------ Current Response (status code ${response.statusCode}) ------');
    log.green(jsonEncode(response.data), response.requestOptions.path.replaceAll(dotenv.get(AppConstantStrings.baseUrl), ''));
    log.white(_generateCurlCommand(response.requestOptions));
    return super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final String? cachedAuthToken = await SharedPrefHelper().getSecuredToken(DatabaseConstants.tokenKey);
    final String? cachedForgetPasswordTokenKey = await SharedPrefHelper().getSecuredToken(DatabaseConstants.forgetPasswordTokenKey);
    final Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    if (cachedAuthToken != null && cachedAuthToken.isNotEmpty) {
      headers['Authorization'] = 'Bearer $cachedAuthToken';
    }
    if (cachedForgetPasswordTokenKey != null && cachedForgetPasswordTokenKey.isNotEmpty && cachedAuthToken == null) {
      headers['Authorization'] = 'Bearer $cachedForgetPasswordTokenKey';
    }

    options.headers.addAll(headers);

    log.yellow('------ Current Request Path -----');
    log.yellow('${options.path} ${LogColors.red}API METHOD : (${options.method})${LogColors.reset}');
    if (options.data != null) {
      log.cyan('------ Current Request body Data -----');
      if (options.data is FormData) {
        final Map<String, dynamic> body = <String, dynamic>{};
        for (final MapEntry<String, String> element in (options.data as FormData).fields) {
          body[element.key] = element.value;
        }
        for (final MapEntry<String, MultipartFile> element in (options.data as FormData).files) {
          body[element.key] = '${element.value.filename}';
        }

        log.cyan(jsonEncode(body));
      } else {
        log.cyan(jsonEncode(options.data));
      }
    }
    log.white('------ Current Request Parameters Data -----');
    log.white(jsonEncode(options.queryParameters));
    log.yellow('------ Current Request Headers -----');
    log.yellow(jsonEncode(options.headers));
    return super.onRequest(options, handler);
  }

  String _generateCurlCommand(RequestOptions options) {
    final String method = options.method;
    final String url = options.uri.toString();
    final Map<String, dynamic> headers = options.headers;
    final data = options.data;

    // Start building the cURL command
    final StringBuffer curlCommand = StringBuffer("curl -X $method '$url'");

    // Add headers
    headers.forEach((String key, value) {
      curlCommand.write(" -H '$key: $value'");
    });

    // Add body if present
    if (data != null) {
      if (data is FormData) {
        final Map<String, String?> formDataMap = <String, String?>{
          for (final MapEntry<String, String> entry in data.fields) entry.key: entry.value,
          for (final MapEntry<String, MultipartFile> file in data.files) file.key: file.value.filename,
        };
        curlCommand.write(" --data '${jsonEncode(formDataMap)}'");
      } else if (data is Map) {
        curlCommand.write(" --data '${jsonEncode(data)}'");
      } else {
        curlCommand.write(" --data '$data'");
      }
    }

    return curlCommand.toString();
  }
}
