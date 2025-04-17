part of 'home_page_layout_cubit.dart';

enum HomePageLayoutStates { initial, changeTapIndex }

extension HomePageLayoutStateX on HomePageLayoutState {
  bool get isInitial => states == HomePageLayoutStates.initial;

  bool get isChangeTapIndex => states == HomePageLayoutStates.changeTapIndex;
}

@immutable
class HomePageLayoutState {
  final HomePageLayoutStates states;
  final int? index;

  const HomePageLayoutState({
    required this.states,
    this.index = 0,
  });

  HomePageLayoutState copyWith({
    HomePageLayoutStates? states,
    int? index,
  }) {
    return HomePageLayoutState(
      states: states ?? this.states,
      index: index ?? this.index,
    );
  }

  @override
  String toString() {
    return 'HomePageLayoutStates (With State $states and Index $index)';
  }
}
