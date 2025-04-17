import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/transactions/widgets/transactions_widgets/index.dart';

class TransactionsBody extends StatelessWidget {
  const TransactionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          LocaleKeys.myTransactions.tr(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontSize: 15.sp,
              ),
        ),
        SizedBox(height: 20.h),
        const Expanded(
          child: TransactionTapBarWidget(),
        ),
      ],
    ).paddingAll(20);
  }
}

final List<Map<String, dynamic>> transactionsData = <Map<String, dynamic>>[
  <String, Object>{
    'date': 'Jan 2025',
    'data': <Map<String, Object>>[
      <String, Object>{
        'date': '15 Jan 2025',
        'paymentStatus': 'cash',
        'total': 1500,
        'location': 'Lazira salon, Beauty Salon',
        'customer_name': 'Mahmoud Hamdy',
        'created_at': '14 Jan 2025 - 11:30PM',
      },
      <String, Object>{
        'date': '16 Jan 2025',
        'paymentStatus': 'card',
        'total': 2000,
        'location': 'Elite Spa, Wellness Center',
        'customer_name': 'Ahmed Ali',
        'created_at': '16 Jan 2025 - 1:00PM',
      },
    ],
  },
  <String, Object>{
    'date': 'Feb 2025',
    'data': <Map<String, Object>>[
      <String, Object>{
        'date': '20 Feb 2025',
        'paymentStatus': 'cash',
        'total': 1800,
        'location': 'Royal Gym, Fitness Center',
        'customer_name': 'Sara Mohamed',
        'created_at': '20 Feb 2025 - 5:45PM',
      },
    ],
  },
];
