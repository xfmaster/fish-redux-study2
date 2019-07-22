import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'view.dart';

class ItemComponent extends Component<ItemState> {
  ItemComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ItemState>(
              adapter: null, slots: <String, Dependent<ItemState>>{}),
        );
}
