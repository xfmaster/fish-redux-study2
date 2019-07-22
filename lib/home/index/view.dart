import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/constant/theme.dart';
import 'package:fish_redux_stutdy_2/view/customer_tab_bar.dart';
import 'package:fish_redux_stutdy_2/view/page_view.dart';
import 'package:fish_redux_stutdy_2/view/tab_controller.dart';
import 'package:flutter/widgets.dart';

import '../../route.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(IndexState state, Dispatch dispatch, ViewService viewService) {
  return BaseScaffold(
    appBar: viewService.buildComponent('appBar'),
    body: MyDefaultTabController(
      length: state.tabList.length,
      child: Column(
        children: <Widget>[
          Container(
            height: 38.0,
            child: CustomTabBar(
              isScrollable: true,
              //是否可以滚动
              controller: state.mController,
              labelColor: AppTheme.tabSelectColor,
              unselectedLabelColor: Color(0xff666666),
              labelStyle: TextStyle(fontSize: 16.0),
              tabs: state.tabList.map((item) {
                return Tab(
                  text: item.title,
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: CustomTabBarView(
              controller: state.mController,
              children: state.tabList.map((item) {
                var dark = state.appTheme.dark;
                print("CustomTabBarView $dark");
                return routes.buildPage('indexTab',
                    {"list": item.channelList, "appTheme": state.appTheme});
              }).toList(),
            ),
          )
        ],
      ),
    ),
  );
}
//   Container(
//          margin: EdgeInsets.only(top: 40, left: 15, right: 15),
//          height: 40,
//          decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(40.0), color: Colors.white),
//          child: Row(
//            children: <Widget>[
//              SizedBox(
//                width: 10,
//              ),
//              Icon(Icons.search),
//              SizedBox(
//                width: 10,
//              ),
//              Expanded(
//                child: TextField(
//                  decoration: InputDecoration(
//                      labelText: '搜索',
//                      labelStyle: TextStyle(color: Color(0xFF8E9AAF)),
//                      border: InputBorder.none),
//                ),
//              ),
//            ],
//          ),
//        ),
