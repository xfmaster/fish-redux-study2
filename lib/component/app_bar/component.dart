import 'package:fish_redux/fish_redux.dart';

import 'package:fish_redux_stutdy_2/component/app_bar/effect.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/reducer.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/view.dart';
import 'package:fish_redux_stutdy_2/view/wrapper.dart';

class AppBarComponent extends Component<AppBarState> {
  AppBarComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          wrapper: appBarWidgetWrapper,
          dependencies: Dependencies<AppBarState>(
              adapter: null, slots: <String, Dependent<AppBarState>>{}),
        );
}
