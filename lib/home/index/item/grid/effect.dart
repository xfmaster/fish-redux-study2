import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';
import 'package:fish_redux_stutdy_2/route.dart';

import 'action.dart';

Effect<ItemState> buildEffect() {
  return combineEffects(<Object, Effect<ItemState>>{
    ItemGridAction.onItemClick: _onAction,
  });
}

void _onAction(Action action, Context<ItemState> ctx) {
  Channel channel = action.payload;
  if (ctx.state.channel.channelid == channel.channelid) {
    print(channel.ch_name);
    appPushRoute('radioDetail', ctx.context,
        params: {"title": channel.name, "name": channel.ch_name});
  }
}
