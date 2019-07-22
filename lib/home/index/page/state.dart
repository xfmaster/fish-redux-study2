import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/global_store/state.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';

class TabState implements GlobalBaseState, Cloneable<TabState> {
  List<ItemState> list;
  bool gridOn;

  @override
  TabState clone() {
    return TabState()
      ..list = list
      ..gridOn = gridOn
      ..appTheme = appTheme;
  }

  @override
  AppTheme appTheme;
}

TabState initState(Map<String, dynamic> args) {
  var tabState = TabState();
  List<Channel> list = args['list'];
  List<ItemState> itemList = new List();
  if (list != null) {
    list.forEach((chanel) {
      itemList.add(new ItemState()
        ..channel = chanel
        ..appTheme = args['appTheme']);
    });
  }
  AppTheme appTheme = args["appTheme"];
  var dark = appTheme.dark;
  print("initState dark=$dark");
  return tabState
    ..list = itemList
    ..gridOn = false;
}
