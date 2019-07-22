import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/component.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import 'index/index_wrapper.dart';

class HomePage extends Page<HomeState, Map<String, dynamic>> {
  HomePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          wrapper: keepAliveWrapper,
          dependencies: Dependencies<HomeState>(
              adapter: null, slots: <String, Dependent<HomeState>>{}),
          middleware: <Middleware<HomeState>>[],
        );
}
