import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';

class AppBarState implements Cloneable<AppBarState> {
  bool centerTitle = true;
  String title;
  bool rightAction = false;
  String rightText;

  String rightIcon; //如果rightAction为true 这个字段不为空，右边会显示这个icon,不显示文字
  bool hasLeft = true;

  @override
  AppBarState clone() {
    return AppBarState()
      ..centerTitle = centerTitle
      ..title = title
      ..rightText = rightText
      ..rightAction = rightAction
      ..rightIcon = rightIcon
      ..appTheme = appTheme
      ..hasLeft = hasLeft;
  }

  AppTheme appTheme;
}

AppBarState initAppBarState(MapLike map) {
  String title = map['title'] ??= 'title';
  bool hasLeft = map['hasLeft'] ??= true;
  String rightText = map['rightText'] ??= '保存';
  bool centerTitle = map['centerTitle'] ??= true;
  bool rightAction = map['rightAction'] ??= false;
  String rightIcon = map['rightIcon'] ??= '';
  AppTheme appTheme = map['appTheme'] ??= AppTheme.getInstance(false);
  return AppBarState()
    ..title = title
    ..hasLeft = hasLeft
    ..rightText = rightText
    ..centerTitle = centerTitle
    ..rightAction = rightAction
    ..rightIcon = rightIcon
    ..appTheme = appTheme;
}

class AppBarStateConnOp<T extends MapLike, P> extends ConnOp<T, P> {
  final String key;
  final P Function(T state) init;

  AppBarStateConnOp({this.init, String key}) : key = key ?? ('');

  @override
  P get(T state) {
    return state.containsKey(key) ? state[key] : (state[key] = init(state));
  }

  @override
  void set(T state, P subState) {
    state[key] = subState;
  }
}
