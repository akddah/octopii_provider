import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/error_widget.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/transactions/transaction_response_model.dart';
import 'package:octopii_provier_app/views/transactions/cubits/transactions_cubit/transactions_cubit.dart';
import 'package:octopii_provier_app/views/transactions/shimmers/transaction_shimmer_view.dart';
import 'package:octopii_provier_app/views/transactions/widgets/transactions_widgets/index.dart';

class TransactionsWidget extends StatefulWidget {
  const TransactionsWidget({super.key});

  @override
  State<TransactionsWidget> createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<TransactionsWidget> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        context.read<TransactionsCubit>().fetchTransactions();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCubit, TransactionsState>(
      builder: (BuildContext context, TransactionsState state) {
        final List<Transaction> transaction =
            state.transactions ?? <Transaction>[];

        if (state.isLoading || state.isInitial) {
          return const TransactionShimmerView();
        } else if (state.isError) {
          return Expanded(
            child: CustomErrorWidget(
              errorMsg: state.errorMsg,
            ),
          );
        } else if (state.transactions!.isEmpty) {
          return Center(
            child: Text(
              LocaleKeys.noTransactions.tr(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          );
        }
        return Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: transaction.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return TransactionView(
                    transaction: transaction[index],
                  );
                },
              ),
            ),
            if (state.isLoadingMore!)
              const Center(
                child: CircularProgressIndicator(),
              )
            else
              Container(),
          ],
        );
      },
    );
  }
}

// ...transactions.map((Map<String, dynamic> transaction) {
// return ValueListenableBuilder<bool>(
// valueListenable: isVisibleList[index],
// builder: (
// BuildContext context,
// bool isVisible,
// Widget? child,
// ) {
// return AnimatedContainer(
// duration: Duration.zero,
// curve: Curves.easeInOut,
// width: isVisible ? 328.w : 328.w,
// margin: EdgeInsets.only(bottom: 12.h),
// padding: const EdgeInsets.all(12),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(12),
// color: isVisible
// ? Theme.of(context)
//     .colorScheme
//     .secondaryContainer
//     : Colors.transparent,
// ),
// child: isVisible
// ? Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: <Widget>[
// ///                              AppHelperFunctions().formatDateToMonthYear(
// //                                 state.transactions![index].createdAt,
// //                               ),
// Row(
// children: <Widget>[
// Text(
// transaction['date'] as String,
// style: Theme.of(context)
//     .textTheme
//     .bodySmall
//     ?.copyWith(
// color: Theme.of(context)
//     .colorScheme
//     .scrim,
// ),
// ),
// SizedBox(width: 8.w),
// Container(
// width: 39.w,
// height: 21.h,
// padding: EdgeInsets.symmetric(
// horizontal: 8.w,
// vertical: 4.h,
// ),
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(
// 360,
// ),
// color: Theme.of(context)
//     .colorScheme
//     .outlineVariant,
// ),
// child: Text(
// transaction['paymentStatus']
// as String,
// style: Theme.of(context)
//     .textTheme
//     .bodySmall
//     ?.copyWith(
// fontSize: 10.sp,
// color: Theme.of(context)
//     .colorScheme
//     .scrim,
// ),
// ),
// ),
// const Spacer(),
// Text(
// '+${transaction['total']}',
// style: Theme.of(context)
//     .textTheme
//     .bodySmall
//     ?.copyWith(
// color: Theme.of(context)
//     .colorScheme
//     .onTertiaryFixedVariant,
// ),
// ),
// ],
// ),
// const SizedBox(height: 12),
// Text(
// transaction['location'] as String,
// style: Theme.of(context)
//     .textTheme
//     .bodySmall
//     ?.copyWith(
// color: Theme.of(context)
//     .colorScheme
//     .scrim,
// ),
// ),
// const SizedBox(height: 12),
// Text(
// transaction['customer_name']
// as String,
// style: Theme.of(context)
//     .textTheme
//     .bodySmall
//     ?.copyWith(
// color: Theme.of(context)
//     .colorScheme
//     .scrim,
// ),
// ),
// const SizedBox(height: 12),
// Text(
// transaction['created_at'] as String,
// style: Theme.of(context)
//     .textTheme
//     .bodySmall
//     ?.copyWith(
// color: Theme.of(context)
//     .colorScheme
//     .scrim,
// ),
// ),
// ],
// )
//     : const SizedBox.shrink(),
// );
// },
// );
