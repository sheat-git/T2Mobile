import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_state.freezed.dart';
part 'navigation_state.g.dart';

@freezed
class NavigationStateData with _$NavigationStateData {
  const factory NavigationStateData({
    required BranchType branch,
    @Default(true) bool showBar,
  }) = _NavigationStateData;
}

enum BranchType {
  courses,
  assignments,
  notifications,
  web,
  settings,
}

@Riverpod(keepAlive: true)
class NavigationState extends _$NavigationState {
  void Function(int index, {bool initialLocation})? _goBranch;

  @override
  NavigationStateData build() => const NavigationStateData(
        branch: BranchType.courses,
      );

  void setGoBranch(void Function(int index, {bool initialLocation}) goBranch) {
    _goBranch = goBranch;
  }

  void goBranch(BranchType branch) {
    _goBranch?.call(branch.index, initialLocation: state.branch == branch);
    state = state.copyWith(branch: branch);
  }

  void showBar() {
    if (!state.showBar) state = state.copyWith(showBar: true);
  }

  void hideBar() {
    if (state.showBar) state = state.copyWith(showBar: false);
  }
}
