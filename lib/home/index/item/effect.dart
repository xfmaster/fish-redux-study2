import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';
import 'package:fish_redux_stutdy_2/global_store/action.dart';
import 'package:fish_redux_stutdy_2/global_store/store.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';
import 'package:fish_redux_stutdy_2/home/index/page/action.dart';
import 'package:fish_redux_stutdy_2/home/mine/action.dart';
import 'package:fish_redux_stutdy_2/utils/SPUtils.dart';
import '../../../route.dart';
import 'action.dart';

Effect<ItemState> buildEffect() {
  return combineEffects(<Object, Effect<ItemState>>{
    ItemAction.onItemClick: _onItemClick,
    MineAction.changeThemeAction: _changeThemeAction,
  });
}

void _onItemClick(Action action, Context<ItemState> ctx) {
  Channel channel = action.payload;
  if (ctx.state.channel.channelid == channel.channelid) {
    print(channel.ch_name);
    appPushRoute('radioDetail', ctx.context,
        params: {"title": channel.name, "name": channel.ch_name});
  }
}

void _changeThemeAction(Action action, Context<ItemState> ctx) {
  SPUtils.get("dark").then((res) {
    print("get dark $res");
    ctx.dispatch(TabActionCreator.changeThemeAction(res != null && res));
  });
}
