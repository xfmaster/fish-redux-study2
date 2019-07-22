import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';
import 'package:fish_redux_stutdy_2/home/index/page/action.dart';
import 'package:fish_redux_stutdy_2/utils/SPUtils.dart';

import 'action.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemState>>{
      TabAction.changeThemeAction: _changeTheme,
    },
  );
}

ItemState _changeTheme(ItemState state, Action action) {
  final ItemState newState = state.clone()
    ..appTheme = AppTheme.getInstance(action.payload);
  return newState;
}
