import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile, tablet, desktop;
  const ResponsiveLayout(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);
  static const double _mobileLimit = 640;
  static const double _tabletLimit = 1200;

  static bool onMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < _mobileLimit;
  static bool onTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < _tabletLimit &&
      MediaQuery.of(context).size.width >= _mobileLimit;
  static bool onDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= _tabletLimit;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < _mobileLimit) {
          return mobile;
        }
        if (constraints.maxWidth < _tabletLimit) {
          return tablet;
        }
        return desktop;
      },
    );
  }
}
