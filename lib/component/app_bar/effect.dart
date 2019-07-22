import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/action.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';
import 'package:flutter/widgets.dart';

Effect<AppBarState> buildEffect() {
  return combineEffects(<Object, Effect<AppBarState>>{
    AppBarAction.leftAction: _leftAction,
  });
}

void _leftAction(Action action, Context<AppBarState> ctx) {
  Navigator.of(ctx.context).pop();
}
