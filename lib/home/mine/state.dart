import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/constants.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/global_store/state.dart';

class MineState implements GlobalBaseState, Cloneable<MineState> {
  bool darkOn;
  bool gridOn;

  @override
  MineState clone() {
    return MineState()
      ..appTheme = appTheme
      ..darkOn = darkOn
      ..gridOn = gridOn;
  }

  @override
  AppTheme appTheme;
}

MineState initState(Map<String, dynamic> args) {
  return MineState()
    ..gridOn = false
    ..darkOn = Constants.dark;
}
