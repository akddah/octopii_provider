import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/transactions/transaction_response_model.dart';

part 'transactions_state.dart';

class TransactionsCubit extends Cubit<TransactionsState> {
  TransactionsCubit()
      : super(const TransactionsState(status: GenericStateStatus.initial));

  int currentPage = 1;
  bool isLoadingMore = false;
  bool hasMoreData = true;
  int ?monthNumber ;

  Future<void> getTransactionsList({int monthNumber = 1} ) async {
    this.monthNumber=monthNumber;
    currentPage = 1;
    emit(state.copyWith(status: GenericStateStatus.loading));
    final CustomResponse<Map<String, dynamic>> result =
        await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.transactions),
      params: <String, dynamic>{'page': currentPage, 'month': monthNumber, 'year': DateTime.now().year},
    );

    switch (result.responseState) {
      case ResponseState.success:
        final TransactionData notificationData =
            TransactionData.fromJson(result.data!);

        AppLogger().info('Transaction Data Is ${result.data}');
        AppLogger().info(
          'The Old Length Is ${notificationData.response?.transactions?.length}',
        );

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            transactions:
                notificationData.response?.transactions ?? <Transaction>[],
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
          ),
        );
    }
  }

  Future<void> fetchTransactions() async {
    if (isLoadingMore || !hasMoreData) {
      return;
    }
    isLoadingMore = true;

    emit(state.copyWith(isLoadingMore: true));

    currentPage++;

    final CustomResponse<Map<String, dynamic>> result =
        await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.transactions),
      params: <String, dynamic>{'page': currentPage, 'month': monthNumber, 'year': 2024},
    );

    switch (result.responseState) {
      case ResponseState.success:
        final TransactionData notificationData =
            TransactionData.fromJson(result.data!);

        if (notificationData.response?.currentPage ==
            notificationData.response?.lastPage) {
          hasMoreData = false;
        }
        final List<Transaction> updatedList = <Transaction>[
          ...state.transactions ?? <Transaction>[],
          ...notificationData.response?.transactions ?? <Transaction>[],
        ];
        AppLogger()
            .info('Current Page: $currentPage, Has More Data: $hasMoreData');
        AppLogger()
            .info('Total Data Length After Update: ${updatedList.length}');

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            transactions: updatedList,
            isLoadingMore: false,
            hasMoreData: hasMoreData,
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
            isLoadingMore: false, // Reset loading state on error
          ),
        );
    }

    isLoadingMore = false;
  }

  void resetCubit() {
    currentPage = 1;
    hasMoreData = true;
    emit(
      state.copyWith(
        status: GenericStateStatus.initial,
      ),
    );
  }
}
