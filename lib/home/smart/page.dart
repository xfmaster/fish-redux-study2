import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';
import '../index/index_wrapper.dart';

class SmartPage extends Page<SmartState, Map<String, dynamic>> {
  SmartPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          wrapper: keepAliveWrapper,
          dependencies: Dependencies<SmartState>(
              adapter: null, slots: <String, Dependent<SmartState>>{}),
          middleware: <Middleware<SmartState>>[],
        );
}
