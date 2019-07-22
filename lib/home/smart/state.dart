import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/global_store/state.dart';

class SmartState implements GlobalBaseState, Cloneable<SmartState> {
  @override
  SmartState clone() {
    return SmartState()..appTheme = appTheme;
  }

  @override
  AppTheme appTheme;
}

SmartState initState(Map<String, dynamic> args) {
  return SmartState();
}
