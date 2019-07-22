import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';

//TODO replace with your own action
enum IndexAction { updateTabList }

class IndexActionCreator {
  static Action updateTabList(List<ChannelTabBean> list) {
    return Action(IndexAction.updateTabList, payload: list);
  }
}
