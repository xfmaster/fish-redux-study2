import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/common/action/grid_action.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/home/mine/action.dart';

import 'action.dart';
import 'state.dart';

Reducer<TabState> buildReducer() {
  return asReducer(
    <Object, Reducer<TabState>>{
      TabAction.changeGridAction: _changeGridAction,
    },
  );
}

TabState _changeGridAction(TabState state, Action action) {
  var payload = action.payload;
  print("_changeGridAction-------------------$payload");
  final TabState newState = state.clone()..gridOn = action.payload;
  return newState;
}

TabState _changeTheme(TabState state, Action action) {
  var newState = state.clone();
  var appTheme = state.appTheme;
  print(" tabPage _changeTheme-------------------$appTheme");
  newState.appTheme =
      AppTheme.getInstance(appTheme == null ? false : appTheme.dark);
  for (int i = 0; i < newState.list.length; i++) {
    newState.list[i].appTheme = newState.appTheme;
  }
  return newState;
}
