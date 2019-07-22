import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction { switchTab }

class HomeActionCreator {
  static Action switchTab(int index) {
    return Action(HomeAction.switchTab, payload: index);
  }
}
