import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BtnAction { action }

class BtnActionCreator {
  static Action onAction() {
    return const Action(BtnAction.action);
  }
}
