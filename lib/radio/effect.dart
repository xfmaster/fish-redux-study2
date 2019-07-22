import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/RadioDetailBean.dart';
import 'package:fish_redux_stutdy_2/http/API.dart';
import 'package:fish_redux_stutdy_2/http/http.dart';
import 'action.dart';
import 'state.dart';

Effect<RadioDetailState> buildEffect() {
  return combineEffects(<Object, Effect<RadioDetailState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<RadioDetailState> ctx) {
  requestGet(MUSIC_BROADCAST_DETAIL, params: {"channelname": ctx.state.name})
      .then((result) {
    print(result);
    if (result == null) return;
    List<RadioDetailBean> list = new List();
    var jsonArr = result['songlist'];
    for (int i = 0; i < jsonArr.length; i++) {
      var radioDetailBean = RadioDetailBean.fromJson(jsonArr[i]);
      list.add(radioDetailBean);
    }
    if (list.length > 0) list.removeLast();
    ctx.dispatch(RadioDetailActionCreator.updateListAction(list));
  });
}
