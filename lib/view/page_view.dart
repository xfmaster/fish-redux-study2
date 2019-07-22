import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  bool isShowLoading;
  Widget body;
  PreferredSizeWidget appBar;

  BaseScaffold({this.body, this.isShowLoading, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body:isShowLoading!=null&& isShowLoading
          ? Center(
              child: CupertinoActivityIndicator(),
            )
          : body,
    );
  }
}
