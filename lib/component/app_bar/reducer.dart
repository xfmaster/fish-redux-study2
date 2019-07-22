import 'package:fish_redux/fish_redux.dart';

import 'package:fish_redux_stutdy_2/component/app_bar/action.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';

Reducer<AppBarState> buildReducer() {
  return asReducer(
    <Object, Reducer<AppBarState>>{
    },
  );
}

AppBarState _onAction(AppBarState state, Action action) {
  final AppBarState newState = state.clone();
  return newState;
}
