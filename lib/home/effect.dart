import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/global_store/action.dart';
import 'package:fish_redux_stutdy_2/global_store/store.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}
