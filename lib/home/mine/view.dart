import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/common/action/grid_action.dart';
import 'package:fish_redux_stutdy_2/global_store/action.dart';
import 'package:fish_redux_stutdy_2/global_store/store.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MineState state, Dispatch dispatch, ViewService viewService) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.brightness_2),
        title: Text('夜间模式', style: state.appTheme.titleStyle),
        trailing: Switch(
            value: state.darkOn,
            onChanged: (value) {
              print("onchange---------$value");
              GlobalStore.store
                  .dispatch(GlobalActionCreator.onchangeThemeColor(value));
              dispatch(MineActionCreator.changeThemeAction(value));
              dispatch(MineActionCreator.changeThemeEffect(value));
            }),
      ),
      ListTile(
        leading: Icon(Icons.grid_on),
        title: Text('GridView显示', style: state.appTheme.titleStyle),
        trailing: Switch(
            value: state.gridOn,
            onChanged: (value) {
              dispatch(MineActionCreator.changeGridAction(value));
            }),
      )
    ],
  );
}
