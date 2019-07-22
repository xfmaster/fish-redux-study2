import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/ChannelTabBean.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/global_store/state.dart';

class ItemState implements Cloneable<ItemState> {
  Channel channel;

  @override
  ItemState clone() {
    return ItemState()
      ..channel = channel
      ..appTheme = appTheme;
  }

  AppTheme appTheme;
}
