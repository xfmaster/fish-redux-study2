import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BtnState> buildReducer() {
  return asReducer(
    <Object, Reducer<BtnState>>{
      BtnAction.action: _onAction,
    },
  );
}

BtnState _onAction(BtnState state, Action action) {
  final BtnState newState = state.clone();
  return newState;
}
