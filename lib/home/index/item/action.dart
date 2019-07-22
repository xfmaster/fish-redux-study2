import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';

//TODO replace with your own action
enum ItemAction { onItemClick }

class ItemActionCreator {
  static Action onItemClick(Channel channel) {
    return Action(ItemAction.onItemClick, payload: channel);
  }
}
