import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/global_store/state.dart';

import 'item/state.dart';

class RadioDetailState
    with MapLike
    implements GlobalBaseState, Cloneable<RadioDetailState> {
  String name;
  List<ItemState> list;

  @override
  RadioDetailState clone() {
    var radioDetailState = RadioDetailState();
    radioDetailState['title'] = this['title'];
    return radioDetailState
      ..name = name
      ..appTheme = appTheme
      ..list = list;
  }

  @override
  AppTheme appTheme;
}

RadioDetailState initState(Map<String, dynamic> args) {
  var radioDetailState = RadioDetailState();
  radioDetailState['title'] = args['title'];
  String name = args['name'];
  return radioDetailState..name = name;
}
