import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_stutdy_2/view/page_view.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    RadioDetailState state, Dispatch dispatch, ViewService viewService) {
  var buildAdapter = viewService.buildAdapter();
  return BaseScaffold(
    appBar: viewService.buildComponent('appBar'),
    body: ListView.builder(
      itemBuilder: buildAdapter.itemBuilder,
      itemCount: buildAdapter.itemCount,
    ),
  );
}
