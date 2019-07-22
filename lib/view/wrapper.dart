import 'package:flutter/widgets.dart';

class AppBarWidget extends PreferredSize {
  final Widget child;
  var width;

  AppBarWidget(this.child, {this.width});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    width = MediaQuery.of(context).size.width;
    return child;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(width, 48.0);
}
//
//class _AppBarWidgetState extends State<AppBarWidget> {
//  @override
//  Widget build(BuildContext context) {
//    return widget.child;
//  }
//}

Widget appBarWidgetWrapper(Widget child) => AppBarWidget(child);
