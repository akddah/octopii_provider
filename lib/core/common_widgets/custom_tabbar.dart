import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';

class CustomTabBar extends HookWidget {
  const CustomTabBar({
    required List<String> tabBarItems,
    required List<Widget> tabViewItems,
    super.key,
    this.changeSelectedIndex,
    double? tabBarItemHeight,
    double? tabViewItemHeight,
    double? tabViewItemWidth,
    TextStyle? titleStyle,
  })  : _tabBarItems = tabBarItems,
        _tabViewItems = tabViewItems,
        _tabBarItemHeight = tabBarItemHeight,
        _tabViewItemHeight = tabViewItemHeight,
        _tabViewItemWidth = tabViewItemWidth,
        _titleStyle = titleStyle;

  final List<String> _tabBarItems;
  final List<Widget> _tabViewItems;

  final double? _tabBarItemHeight;
  final double? _tabViewItemHeight;
  final double? _tabViewItemWidth;
  final TextStyle? _titleStyle;
  final int Function(int index)? changeSelectedIndex;
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = useState(0);

    void changeTapIndex(int index) {
      if (selectedIndex.value != index) {
        selectedIndex.value = index;
      }
    }

    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: TabBarItems(
            tabBarItems: _tabBarItems,
            selectedIndex: selectedIndex.value,
            onTabSelected: (int index) {
              changeSelectedIndex?.call(index) ?? changeTapIndex(index);
              selectedIndex.value = index;
            },
            tabBarItemHeight: _tabBarItemHeight,
            titleStyle: _titleStyle,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          flex: 28,
          child: TabViewItems(
            tabViewItems: _tabViewItems,
            tabViewItemHeight: _tabViewItemHeight,
            tabViewItemWidth: _tabViewItemWidth,
            selectedIndex: selectedIndex.value,
          ),
        ),
      ],
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
    return LazyLoadIndexedStack(
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
                color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primary,
              ),
              color: isSelected ? Theme.of(context).colorScheme.primary : AppColors.transparent,
            ),
            alignment: Alignment.center,
            child: Text(
              tabBarItems[index],
              style: titleStyle ??
                  Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: isSelected ? Theme.of(context).colorScheme.secondaryContainer : Theme.of(context).colorScheme.primary,
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
