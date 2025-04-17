import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/country_list/country_list_response_model.dart';

part 'get_country_list_state.dart';

class GetCountryListCubit extends Cubit<GetCountryListState> {
  GetCountryListCubit()
      : super(
          const GetCountryListState(
            status: GenericStateStatus.initial,
          ),
        );

  Future<void> getCountryList() async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );
    log('-=-=-=-= ${dotenv.get(AppConstantStrings.countryList)}');

    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.countryList),
      takeOtherBaseurl: true,
    );

    switch (result.responseState) {
      case ResponseState.success:
        final CountryListResponseModel responseModel = CountryListResponseModel.fromJson(
          result.data!,
        );

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            responseModel: responseModel,
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
          ),
        );
        AppLogger().error('Error From Server: ${result.msg}');
    }
  }

  void setSelectedCountry({CountryData? countryData}) {
    AppLogger().info('The Set Country Data Is $countryData');
    emit(
      state.copyWith(
        countryData: countryData,
      ),
    );
  }
}
