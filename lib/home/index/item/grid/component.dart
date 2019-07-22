import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';

import 'effect.dart';
import 'view.dart';

class ItemGridComponent extends Component<ItemState> {
  ItemGridComponent()
      : super(
            effect: buildEffect(),
            view: buildView,
            dependencies: Dependencies<ItemState>(
                adapter: null,
                slots: <String, Dependent<ItemState>>{
                }),);

}
