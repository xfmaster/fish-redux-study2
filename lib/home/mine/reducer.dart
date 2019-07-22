import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MineState> buildReducer() {
  return asReducer(
    <Object, Reducer<MineState>>{
      MineAction.changeThemeAction: _changeThemeAction,
      MineAction.changeGridValue: _changeGridAction,
    },
  );
}

MineState _changeThemeAction(MineState state, Action action) {
  final MineState newState = state.clone()..darkOn = action.payload;
  return newState;
}
MineState _changeGridAction(MineState state, Action action) {
  final MineState newState = state.clone()..gridOn = action.payload;
  return newState;
}
