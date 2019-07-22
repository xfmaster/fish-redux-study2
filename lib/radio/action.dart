import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/RadioDetailBean.dart';

//TODO replace with your own action
enum RadioDetailAction { updateListAction }

class RadioDetailActionCreator {
  static Action updateListAction(List<RadioDetailBean> list) {
    return Action(RadioDetailAction.updateListAction, payload: list);
  }
}
