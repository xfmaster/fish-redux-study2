import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TabState state, Dispatch dispatch, ViewService viewService) {
  var adapter = viewService.buildAdapter();
  print(state.appTheme);
  return state.gridOn
      ? GridView.builder(
          itemCount: adapter.itemCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //横轴元素个数
              crossAxisCount: 2,
              //纵轴间距
              mainAxisSpacing: 20.0,
              //横轴间距
              crossAxisSpacing: 10.0,
              //子组件宽高长度比例
              childAspectRatio: 1.0),
          itemBuilder: adapter.itemBuilder)
      : ListView.builder(
          itemBuilder: adapter.itemBuilder,
          itemCount: adapter.itemCount,
        );
}
