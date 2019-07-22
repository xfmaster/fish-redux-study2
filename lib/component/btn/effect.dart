import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<BtnState> buildEffect() {
  return combineEffects(<Object, Effect<BtnState>>{
    BtnAction.action: _onAction,
  });
}

void _onAction(Action action, Context<BtnState> ctx) {
}
