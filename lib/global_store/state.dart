import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:flutter/material.dart';

abstract class GlobalBaseState {
  AppTheme get appTheme;

  set appTheme(AppTheme appTheme);

}

class GlobalState extends GlobalBaseState implements Cloneable<GlobalState> {
  @override
  GlobalState clone() {
    print("GlobalState clone");
    return GlobalState()
      ..appTheme = appTheme;
  }

  @override
  AppTheme appTheme;
}
