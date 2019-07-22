import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';

//TODO replace with your own action
enum ItemGridAction { onItemClick }

class ItemGridActionCreator {
  static Action onItemClick(Channel channel) {
    return Action(ItemGridAction.onItemClick, payload: channel);
  }
}
