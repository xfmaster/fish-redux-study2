import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MineAction { changeThemeAction,changeGridAction,changeGridValue,changeThemeEffect }

class MineActionCreator {
  static Action changeThemeAction(bool action) {
    return Action(MineAction.changeThemeAction, payload: action);
  }
  static Action changeGridAction(bool action) {
    return Action(MineAction.changeGridAction, payload: action);
  }
  static Action changeGridValue(bool action) {
    return Action(MineAction.changeGridValue, payload: action);
  }
  static Action changeThemeEffect(bool action) {
    return Action(MineAction.changeThemeEffect, payload: action);
  }
}
