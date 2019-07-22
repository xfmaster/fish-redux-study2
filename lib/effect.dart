import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MainState> ctx) {
}
