import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum AppBarAction { rightAction, leftAction }

class AppBarActionCreator {
  static Action rightAction() {
    return const Action(AppBarAction.rightAction);
  }

  static Action leftAction() {
    return const Action(AppBarAction.leftAction);
  }
}
