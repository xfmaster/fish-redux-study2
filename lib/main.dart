import 'package:fish_redux_stutdy_2/utils/SPUtils.dart';
import 'package:flutter/material.dart';

import 'constant/constants.dart';
import 'constant/theme.dart';
import 'http/http.dart';
import 'route.dart';

void main() {
  initDioOptions(() {});
  try {
    SPUtils.get("dark").then((val) {
      print(val);
      Constants.dark = val != null && val;
      runApp(routes.buildPage("main", null));
    });
  } catch (e) {
    runApp(routes.buildPage("main", null));
  }
}
