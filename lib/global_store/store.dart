import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/constants.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'reducer.dart';
import 'state.dart';

class GlobalStore {
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store {
    var appTheme = AppTheme.getInstance(Constants.dark);
    return _globalStore ??= createStore<GlobalState>(
        GlobalState()..appTheme = appTheme, buildReducer());
  }
}
