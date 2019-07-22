import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';
import 'package:fish_redux_stutdy_2/http/API.dart';
import 'package:fish_redux_stutdy_2/http/http.dart';
import 'package:fish_redux_stutdy_2/view/tab_controller.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

Effect<IndexState> buildEffect() {
  return combineEffects(<Object, Effect<IndexState>>{
    Lifecycle.initState: _init,
  });
}


void _init(Action action, Context<IndexState> ctx) {
  requestGet(MUSIC_BROADCAST).then((data) {
    print(data);
    if (data != "") {
      List<ChannelTabBean> list = new List();
      for (int i = 0; i < data.length; i++) {
        var channelTabBean = ChannelTabBean.fromJson(data[i]);
        list.add(channelTabBean);
      }
      TickerProvider tickerProvider = ctx.stfState as TickerProvider;
      ctx.state.mController =
          new MyTabController(length: list.length, vsync: tickerProvider);
      ctx.dispatch(IndexActionCreator.updateTabList(list));
    }
  });
}
