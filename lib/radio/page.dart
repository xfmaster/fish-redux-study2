import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/component.dart';
import 'package:fish_redux_stutdy_2/component/app_bar/state.dart';

import 'adapter/adapter.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class RadioDetailPage extends Page<RadioDetailState, Map<String, dynamic>> {
  RadioDetailPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<RadioDetailState>(
              adapter: NoneConn<RadioDetailState>() + RadioAdapter(),
              slots: <String, Dependent<RadioDetailState>>{
                'appBar': AppBarStateConnOp<RadioDetailState, AppBarState>(
                        init: initAppBarState, key: 'appBar') +
                    AppBarComponent(),
              }),
          middleware: <Middleware<RadioDetailState>>[],
        );
}
