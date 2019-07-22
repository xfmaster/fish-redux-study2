import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/global_store/state.dart';

class HomeState with MapLike implements GlobalBaseState, Cloneable<HomeState> {
  int index;

  @override
  HomeState clone() {
    return HomeState()
      ..index = index
      ..appTheme = appTheme;
  }

  @override
  AppTheme appTheme;
}

HomeState initState(Map<String, dynamic> args) {
  var homeState = HomeState();
  homeState['title'] = '首页';
  homeState['hasLeft'] = false;
  return homeState..index = 0;
}
