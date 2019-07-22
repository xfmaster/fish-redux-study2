import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SmartState> buildReducer() {
  return asReducer(
    <Object, Reducer<SmartState>>{
      SmartAction.action: _onAction,
    },
  );
}

SmartState _onAction(SmartState state, Action action) {
  final SmartState newState = state.clone();
  return newState;
}
