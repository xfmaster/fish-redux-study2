import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:flutter/material.dart';

import 'package:fish_redux_stutdy_2/component/app_bar/action.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';

Widget buildView(
    AppBarState state, Dispatch dispatch, ViewService viewService) {
  var appTheme = state.appTheme;
  print("appbar-----------------$appTheme");
  return AppBar(
    centerTitle: state.centerTitle,
    title: Text(
      state.title,
      style: state.appTheme.appBarTitleStyle,
    ),
    leading: state.hasLeft
        ? IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              dispatch(AppBarActionCreator.leftAction());
            })
        : null,
    actions: state.rightAction
        ? <Widget>[
            InkWell(
              onTap: () {
                dispatch(AppBarActionCreator.rightAction());
              },
              child: state.rightIcon == null
                  ? Text(state.rightText)
                  : Image.asset(
                      state.rightIcon,
                      width: 40,
                      height: 40,
                    ),
            ),
          ]
        : null,
  );
}
