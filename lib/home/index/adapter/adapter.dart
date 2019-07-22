import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/home/index/item/component.dart';
import 'package:fish_redux_stutdy_2/home/index/item/grid/component.dart';
import 'package:fish_redux_stutdy_2/home/index/page/state.dart';

import '../state.dart';
import 'state.dart';

class IndexAdapter extends DynamicFlowAdapter<TabState> {
  IndexAdapter()
      : super(
          pool: <String, Component<Object>>{
            "item": ItemComponent(),
            "gridItem": ItemGridComponent(),
          },
          connector: _IndexConnector(),
        );
}

class _IndexConnector extends ConnOp<TabState, List<ItemBean>> {
  @override
  List<ItemBean> get(TabState state) {
    if (state.list?.isNotEmpty == true) {
      return state.list.map<ItemBean>((ItemState data) {
        if (state.gridOn) return ItemBean('gridItem', data);
        return ItemBean('item', data);
      }).toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(TabState state, List<ItemBean> items) {
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
