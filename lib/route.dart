import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'constant/theme.dart';
import 'global_store/state.dart';
import 'global_store/store.dart';
import 'home/index/page.dart';
import 'home/index/page/page.dart';
import 'home/mine/page.dart';
import 'home/page.dart';
import 'home/smart/page.dart';
import 'page.dart';
import 'radio/page.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/home': (BuildContext context) => routes.buildPage("home", null),
  '/main': (BuildContext context) => routes.buildPage("main", null),
  '/radioDetail': (BuildContext context) =>
      routes.buildPage("radioDetail", null),
};
var routes = new PageRoutes(
  pages: <String, Page<Object, dynamic>>{
    'home': HomePage(),
    'main': MainPage(),
    'index': IndexPage(),
    'smart': SmartPage(),
    'mine': MinePage(),
    'indexTab': TabPage(),
    'radioDetail': RadioDetailPage(), //电台详情页
  },
  visitor: (String path, Page<Object, dynamic> page) {
    /// XXX
    if (page.isTypeof<GlobalBaseState>()) {
      page.connectExtraStore<GlobalState>(GlobalStore.store,
          (Object pageState, GlobalState appState) {
        final GlobalBaseState p = pageState;
        if (p.appTheme != null && p.appTheme.dark == appState.appTheme.dark) {
          print("path=$path");
          return pageState;
        } else {
          if (pageState is Cloneable) {
            print("Cloneable path=$path");
            final Object copy = pageState.clone();
            final GlobalBaseState newState = copy;
            newState.appTheme = appState.appTheme;
            return newState;
          }
        }
      });
    }

    page.enhancer.append(
      viewMiddleware: <ViewMiddleware<dynamic>>[safetyView<dynamic>()],
      adapterMiddleware: <AdapterMiddleware<dynamic>>[safetyAdapter<dynamic>()],
      effectMiddleware: [_pageAnalyticsMiddleware()],
      middleware: <Middleware<dynamic>>[logMiddleware<dynamic>()],
    );
  },
);

/// 简单的Effect AOP
/// 只针对页面的生命周期进行打印
EffectMiddleware<T> _pageAnalyticsMiddleware<T>({String tag = 'redux'}) {
  return (AbstractLogic<dynamic> logic, Store<T> store) {
    return (Effect<dynamic> effect) {
      return (Action action, Context<dynamic> ctx) {
        if (logic is Page<dynamic, dynamic> && action.type is Lifecycle) {
          print('${logic.runtimeType} ${action.type.toString()} ');
        }
        return effect?.call(action, ctx);
      };
    };
  };
}

Future appPushRoute(String path, BuildContext context,
    {Map<String, dynamic> params}) async {
  return await Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => routes.buildPage(path, params)));
}

Future appPushRemoveRoute(String path, BuildContext context,
    {Map<String, dynamic> params}) async {
  return await Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
          builder: (BuildContext context) => routes.buildPage(path, params)),
      ModalRoute.withName(path));
}

Future appPushNameRoute(String path, BuildContext context) async {
  return await Navigator.of(context).pushNamed(path);
}
