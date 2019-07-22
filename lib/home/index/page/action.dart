import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TabAction { changeGridAction, changeThemeAction }

class TabActionCreator {
  static Action changeGridAction(bool value) {
    return Action(TabAction.changeGridAction, payload: value);
  }

  static Action changeThemeAction(bool value) {
    return Action(TabAction.changeThemeAction,payload: value);
  }
}
