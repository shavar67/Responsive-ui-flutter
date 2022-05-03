import 'package:flutter/material.dart';

import '../widget/mobile.dart';
import '../widget/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: const Mobile(),
        desktop: Scaffold(
            appBar: AppBar(),
            body: const Center(
                child: Text('on desktop', style: TextStyle(fontSize: 64)))),
        tablet: const Scaffold(
            body: Center(
          child: Text('on tablet', style: TextStyle(fontSize: 64)),
        )));
  }
}
