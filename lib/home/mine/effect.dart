import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/common/action/grid_action.dart';
import 'package:fish_redux_stutdy_2/global_store/action.dart';
import 'package:fish_redux_stutdy_2/global_store/store.dart';
import 'package:fish_redux_stutdy_2/utils/SPUtils.dart';
import 'action.dart';
import 'state.dart';

Effect<MineState> buildEffect() {
  return combineEffects(<Object, Effect<MineState>>{
    MineAction.changeGridAction: _changeGridAction,
    MineAction.changeThemeEffect: __changeThemeEffect,
  });
}

void _changeGridAction(Action action, Context<MineState> ctx) {
  SPUtils.save("gridOn", action.payload);
  ctx.dispatch(MineActionCreator.changeGridValue(action.payload));
  ctx.broadcast(MineActionCreator.changeGridValue(action.payload));
}

void __changeThemeEffect(Action action, Context<MineState> ctx) {
  SPUtils.save("dark", action.payload);
  ctx.broadcast(MineActionCreator.changeThemeAction(action.payload));
}
