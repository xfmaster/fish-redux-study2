import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/component.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';
import 'package:fish_redux_stutdy_2/view/keep_alive_state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import 'index_wrapper.dart';

class IndexPage extends Page<IndexState, Map<String, dynamic>> {
  IndexPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          wrapper: keepAliveWrapper,
          dependencies: Dependencies<IndexState>(
              adapter: null,
              slots: <String, Dependent<IndexState>>{
                'appBar': AppBarStateConnOp<IndexState, AppBarState>(
                        init: initAppBarState, key: 'appBar') +
                    AppBarComponent(),
              }),
          middleware: <Middleware<IndexState>>[],
        );

  @override
  ComponentState<IndexState> createState() {
    return IndexSingleTickerProviderState();
  }
}
