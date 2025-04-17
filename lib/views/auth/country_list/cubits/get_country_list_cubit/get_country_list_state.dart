part of 'get_country_list_cubit.dart';

extension GetCountryListStateX on GetCountryListState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class GetCountryListState {
  final GenericStateStatus status;
  final String? errorMsg;
  final CountryListResponseModel? responseModel;
  final CountryData? countryData;

  const GetCountryListState({
    required this.status,
    this.responseModel,
    this.errorMsg,
    this.countryData = const CountryData(
      id: 1,
      title: 'Egypt',
      code: '20',
      currency: 'egp',
      flag: 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EG.svg',
      isoCode: 'EG',
      status: 1,
    ),
  });

  GetCountryListState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    CountryListResponseModel? responseModel,
    CountryData? countryData,
  }) {
    return GetCountryListState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      responseModel: responseModel ?? this.responseModel,
      countryData: countryData ?? this.countryData,
    );
  }

  @override
  String toString() {
    return 'BookingListState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'responseModel: $responseModel, '
        'countryData: $countryData, '
        ')';
  }
}
