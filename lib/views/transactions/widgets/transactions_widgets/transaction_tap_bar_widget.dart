import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/transactions/cubits/transactions_cubit/transactions_cubit.dart';
import 'package:octopii_provier_app/views/transactions/widgets/transactions_widgets/index.dart';

class TransactionTapBarWidget extends HookWidget {
  const TransactionTapBarWidget({
    super.key,
    double? tabBarItemHeight,
    double? tabViewItemHeight,
    double? tabViewItemWidth,
    TextStyle? titleStyle,
  })  : _tabBarItemHeight = tabBarItemHeight,
        _tabViewItemHeight = tabViewItemHeight,
        _tabViewItemWidth = tabViewItemWidth,
        _titleStyle = titleStyle;

  final double? _tabBarItemHeight;
  final double? _tabViewItemHeight;
  final double? _tabViewItemWidth;
  final TextStyle? _titleStyle;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = useState(0);

    void handleTabChange(int index) {
      selectedIndex.value = index;
      sendMonthToApi(index,context);
    }

    return Column(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: TabBarItems(
            tabBarItems: <String>[
              // LocaleKeys.all.tr(),
              LocaleKeys.jan.tr(),
              LocaleKeys.feb.tr(),
              LocaleKeys.mar.tr(),
              LocaleKeys.apr.tr(),
              LocaleKeys.may.tr(),
              LocaleKeys.jun.tr(),
              LocaleKeys.jul.tr(),
              LocaleKeys.aug.tr(),
              LocaleKeys.sep.tr(),
              LocaleKeys.oct.tr(),
              LocaleKeys.nov.tr(),
              LocaleKeys.dec.tr(),
            ],
            selectedIndex: selectedIndex.value,
            onTabSelected: handleTabChange,
            tabBarItemHeight: _tabBarItemHeight,
            titleStyle: _titleStyle,
          ),
        ),
        SizedBox(height: 20.h),
        Flexible(
          flex: 30,
          child: TabViewItems(
            tabViewItems: List<TransactionsWidget>.generate(
              12,
              (_) => const TransactionsWidget(),
            ),
            selectedIndex: selectedIndex.value,
            tabViewItemHeight: _tabViewItemHeight,
            tabViewItemWidth: _tabViewItemWidth,
          ),
        ),
      ],
    );
  }

  /// Sends the selected month's index to the API.
  void sendMonthToApi(int index,BuildContext context) {
    final int monthNumber = index + 1; // 0 = All, 1 = Jan, 2 = Feb, etc.
    AppLogger().info('Sending month to API: $monthNumber');
    AppLogger().info('Current Year Is  ${DateTime.now().year}');
    context.read<TransactionsCubit>().getTransactionsList(
          monthNumber: monthNumber,
        );
  }
}

class TabViewItems extends StatelessWidget {
  const TabViewItems({
    required this.tabViewItems,
    required this.selectedIndex,
    this.tabViewItemHeight,
    this.tabViewItemWidth,
    super.key,
  });

  final List<Widget> tabViewItems;
  final int selectedIndex;
  final double? tabViewItemHeight;
  final double? tabViewItemWidth;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: selectedIndex,
      children: tabViewItems,
    );
  }
}

class TabBarItems extends StatelessWidget {
  const TabBarItems({
    required this.tabBarItems,
    required this.selectedIndex,
    required this.onTabSelected,
    this.tabBarItemHeight,
    this.titleStyle,
    super.key,
  });

  final List<String> tabBarItems;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final double? tabBarItemHeight;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: tabBarItems.length,
      itemBuilder: (BuildContext context, int index) {
        final bool isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () => onTabSelected(index),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360.r),
              border: Border.all(
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.primary,
              ),
              color: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : AppColors.transparent,
            ),
            alignment: Alignment.center,
            child: Text(
              tabBarItems[index],
              style: titleStyle ??
                  Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: isSelected
                            ? Theme.of(context).colorScheme.secondaryContainer
                            : Theme.of(context).colorScheme.primary,
                      ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, __) => SizedBox(
        width: 10.w,
      ),
    ).wrapCenter();
  }
}
