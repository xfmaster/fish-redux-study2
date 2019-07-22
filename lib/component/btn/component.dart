import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BtnComponent extends Component<BtnState> {
  BtnComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BtnState>(
                adapter: null,
                slots: <String, Dependent<BtnState>>{
                }),);

}
