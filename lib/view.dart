import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/route.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'constant/theme.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: state.appTheme.dark ? darkTheme : lightTheme,
    home: routes.buildPage('home', null),
    routes: appRoutes,
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
