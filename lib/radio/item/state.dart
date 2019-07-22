import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/RadioDetailBean.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';

class ItemState implements Cloneable<ItemState> {
  RadioDetailBean bean;

  @override
  ItemState clone() {
    return ItemState()
      ..bean = bean
      ..appTheme = appTheme;
  }

  AppTheme appTheme;
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
