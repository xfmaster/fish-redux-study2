import 'package:fish_redux/fish_redux.dart';

class BtnState implements Cloneable<BtnState> {

  @override
  BtnState clone() {
    return BtnState();
  }
}

BtnState initState(Map<String, dynamic> args) {
  return BtnState();
}
