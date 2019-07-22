import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<IndexState> buildReducer() {
  return asReducer(
    <Object, Reducer<IndexState>>{
      IndexAction.updateTabList: _updateTabList,
    },
  );
}

IndexState _updateTabList(IndexState state, Action action) {
  final IndexState newState = state.clone()..tabList = action.payload;
  return newState;
}
