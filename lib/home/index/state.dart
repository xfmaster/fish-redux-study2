import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/global_store/state.dart';
import 'package:fish_redux_stutdy_2/view/tab_controller.dart';

class IndexState
    with MapLike
    implements GlobalBaseState, Cloneable<IndexState> {
  MyTabController mController;
  List<ChannelTabBean> tabList;

  @override
  IndexState clone() {
    var indexState = IndexState();
    indexState['title'] = this['title'];
    indexState['hasLeft'] = this['hasLeft'];
    indexState['appTheme'] = appTheme;
    return indexState
      ..mController = mController
      ..tabList = tabList
      ..appTheme = appTheme;
  }

  @override
  AppTheme appTheme;
}

IndexState initState(Map<String, dynamic> args) {
  print('index initState');
  var indexState = IndexState();
  indexState['title'] = '电台';
  indexState['hasLeft'] = false;
  indexState['appTheme'] = indexState.appTheme;
  List<ChannelTabBean> list = new List();
  return indexState..tabList = list;
}
