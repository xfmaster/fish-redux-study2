import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/home/index/adapter/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import '../index_wrapper.dart';
class TabPage extends Page<TabState, Map<String, dynamic>> {
  TabPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          wrapper:keepAliveWrapper,
          dependencies: Dependencies<TabState>(
              adapter: NoneConn<TabState>() + IndexAdapter(),
              slots: <String, Dependent<TabState>>{}),
          middleware: <Middleware<TabState>>[],
        );
}
