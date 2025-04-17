import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/models/transactions/transaction_response_model.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({
    required this.transaction,
    super.key,
  });

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 355.w,
          margin: EdgeInsets.only(bottom: 12.h),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    AppHelperFunctions().formatDateToDayMonthYear(
                      transaction.date,
                    ),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                  SizedBox(width: 8.w),
                  if (transaction.paymentMethod != null)
                    Container(
                      width: 39.w,
                      height: 21.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          360,
                        ),
                        color: Theme.of(context).colorScheme.outlineVariant,
                      ),
                      child: Text(
                        transaction.paymentMethod!.name,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 10.sp,
                              color: Theme.of(context).colorScheme.scrim,
                            ),
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  const Spacer(),
                  Text(
                    '+${transaction.amount}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onTertiaryFixedVariant,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Text(
              //   transaction['location'] as String,
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodySmall
              //       ?.copyWith(
              //         color:
              //             Theme.of(context).colorScheme.scrim,
              //       ),
              // ),
              const SizedBox(height: 12),
              // Text(
              //   transaction['customer_name'] as String,
              //   style: Theme.of(context)
              //       .textTheme
              //       .bodySmall
              //       ?.copyWith(
              //         color:
              //             Theme.of(context).colorScheme.scrim,
              //       ),
              // ),
              const SizedBox(height: 12),
              Text(
                AppHelperFunctions().formatDateTimeWithTime(
                  transaction.createdAt,
                ),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.scrim,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
