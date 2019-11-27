import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final bool isShowLoading;
  final Widget body;
  final PreferredSizeWidget appBar;

  BaseScaffold({this.body, this.isShowLoading = false, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: isShowLoading
          ? Center(
              child: CupertinoActivityIndicator(),
            )
          : body,
    );
  }
}
