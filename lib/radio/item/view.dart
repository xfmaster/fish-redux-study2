import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return InkWell(
    onTap: () {
//      dispatch(ItemActionCreator.onItemClick(state.channel));
    },
    child: Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      height: 100,
      child: Row(
        children: <Widget>[
          Image.network(
            state.bean.thumb,
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(state.bean.title ?? "", style: state.appTheme.titleStyle),
              SizedBox(
                height: 10,
              ),
              Text(state.bean.artist ?? "", style: state.appTheme.subtitleStyle)
            ],
          ))
        ],
      ),
    ),
  );
  ;
}
