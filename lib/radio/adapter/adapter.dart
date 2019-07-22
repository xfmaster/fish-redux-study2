import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/radio/item/component.dart';
import 'package:fish_redux_stutdy_2/radio/item/state.dart';

import '../state.dart';

class RadioAdapter extends DynamicFlowAdapter<RadioDetailState> {
  RadioAdapter()
      : super(
          pool: <String, Component<Object>>{"item": ItemComponent()},
          connector: _RadioConnector(),
        );
}

class _RadioConnector extends ConnOp<RadioDetailState, List<ItemBean>> {
  @override
  List<ItemBean> get(RadioDetailState state) {
    if (state.list?.isNotEmpty == true) {
      return state.list.map<ItemBean>((ItemState data) {
        return ItemBean('item', data);
      }).toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(RadioDetailState state, List<ItemBean> items) {
    if (items?.isNotEmpty == true) {
      state.list = List<ItemState>.from(items.map<ItemState>((ItemBean bean) {
        return bean.data;
      }).toList());
    } else {
      state.list = <ItemState>[];
    }
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
