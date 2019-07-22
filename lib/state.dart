import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';

import 'global_store/state.dart';

class MainState implements GlobalBaseState, Cloneable<MainState> {
  @override
  MainState clone() {
    return MainState();
  }

  @override
  AppTheme appTheme;
}

MainState initState(Map<String, dynamic> args) {
  return MainState();
}
