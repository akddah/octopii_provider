part of 'transactions_cubit.dart';

extension TransactionsStateX on TransactionsState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
class TransactionsState {
  final GenericStateStatus status;
  final String? errorMsg;
  final List<Transaction>? transactions;
  final bool? isLoadingMore;
  final bool? hasMoreData;

  const TransactionsState({
    required this.status,
    this.errorMsg,
    this.transactions,
    this.isLoadingMore = false,
    this.hasMoreData = false,
  });

  TransactionsState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    List<Transaction>? transactions,
    bool? isLoadingMore,
    bool? hasMoreData,
  }) {
    return TransactionsState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      transactions: transactions ?? this.transactions,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMoreData: hasMoreData ?? this.hasMoreData,
    );
  }

  @override
  String toString() {
    return 'LogoutState('
        'status: $status, '
        'errorMsg: $errorMsg, '
        'transactions: $transactions, '
        'isLoadingMore: $isLoadingMore, '
        'hasMoreData: $hasMoreData, '
        ')';
  }
}
