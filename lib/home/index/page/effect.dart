import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/home/mine/action.dart';
import 'action.dart';
import 'state.dart';

Effect<TabState> buildEffect() {
  return combineEffects(<Object, Effect<TabState>>{
    MineAction.changeGridValue: _onAction,
  });
}

void _onAction(Action action, Context<TabState> ctx) {
  print("fadsfadsfdfsdsfdfs");
  ctx.dispatch(TabActionCreator.changeGridAction(action.payload));
}

