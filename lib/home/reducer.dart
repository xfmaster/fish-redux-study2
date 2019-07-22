import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.switchTab: _switchTab,
    },
  );
}

HomeState _switchTab(HomeState state, Action action) {
  final HomeState newState = state.clone()..index = action.payload;
  return newState;
}
