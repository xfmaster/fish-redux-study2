import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SmartState> buildEffect() {
  return combineEffects(<Object, Effect<SmartState>>{
    SmartAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SmartState> ctx) {
}
