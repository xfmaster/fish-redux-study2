import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../route.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: IndexedStack(
      children: <Widget>[
        routes.buildPage('index', null),
        routes.buildPage('smart', null),
        routes.buildPage('mine', null),
      ],
      index: state.index,
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.wb_sunny), title: Text('智能')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_pin), title: Text('我的')),
      ],
      onTap: (index) {
        dispatch(HomeActionCreator.switchTab(index));
      },
      currentIndex: state.index,
    ),
  );
}
