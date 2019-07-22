import 'package:fish_redux/fish_redux.dart';

enum GridAction { changeGridAction }

class GridActionCreator {
  static Action onchangeGridAction(bool action) {
    return Action(GridAction.changeGridAction, payload: action);
  }
}
