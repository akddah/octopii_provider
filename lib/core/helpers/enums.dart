enum ChooseImageType { camera, gallery }

enum BackgroundImageType { memory, file, network, assets }

enum PaymentMethod { cash, card, other }

enum PaymentStatus { unpaid, paid, pending }

enum ErrorType { network, server, backEndValidation, emptyData, unknown, none, unAuth }

enum ResponseState {
  success,
  error,
}

enum GenericStateStatus {
  initial,
  loading,
  loaded,
  error,
}

enum BookingStatus {
  pending,
  started,
  completed,
  confirmed,
  cancelled,
}
