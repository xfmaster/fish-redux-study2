import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';
import 'package:flutter/material.dart';

import '../action.dart';
import 'action.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return InkWell(
    onTap: () {
      dispatch(ItemGridActionCreator.onItemClick(state.channel));
    },
    child: Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      height: 100,
      child: Column(
        children: <Widget>[
          Image.network(
            state.channel.thumb,
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Text(state.channel.name, style: state.appTheme.titleStyle),
          state.channel.cate_sname != null
              ? Text(state.channel.cate_sname,
                  style: state.appTheme.subtitleStyle)
              : SizedBox(),
        ],
      ),
    ),
  );
}
