import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';
import 'package:flutter/material.dart';

import 'action.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  print(state.channel.name);
  return InkWell(
    onTap: () {
      dispatch(ItemActionCreator.onItemClick(state.channel));
    },
    child: Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      height: 100,
      child: Row(
        children: <Widget>[
          Image.network(
            state.channel.thumb,
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(state.channel.name, style: state.appTheme.titleStyle),
              SizedBox(
                height: 10,
              ),
              state.channel.cate_sname != null
                  ? Text(state.channel.cate_sname, style: state.appTheme.subtitleStyle)
                  : SizedBox(),
            ],
          )
        ],
      ),
    ),
  );
}
