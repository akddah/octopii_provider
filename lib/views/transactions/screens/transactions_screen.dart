import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/application_app_bar_back_button.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/views/transactions/cubits/transactions_cubit/transactions_cubit.dart';
import 'package:octopii_provier_app/views/transactions/widgets/transactions_widgets/index.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.transparent,
        systemNavigationBarColor: AppColors.neutral800,
      ),
      child: BlocProvider<TransactionsCubit>(
        create: (BuildContext context) =>
            TransactionsCubit()..getTransactionsList(),
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
          appBar: const ApplicationAppBarBackButton(),
          body: const TransactionsBody(),
        ),
      ),
    );
  }
}
