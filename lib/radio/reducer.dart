import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/bean/RadioDetailBean.dart';

import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Reducer<RadioDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<RadioDetailState>>{
      RadioDetailAction.updateListAction: _updateListAction,
    },
  );
}

RadioDetailState _updateListAction(RadioDetailState state, Action action) {
  final RadioDetailState newState = state.clone();
  List<RadioDetailBean> list = action.payload;
  List<ItemState> itemList = new List();
  list.forEach((bean) {
    itemList.add(new ItemState()..bean = bean..appTheme=state.appTheme);
  });
  newState.list = itemList;
  return newState;
}
