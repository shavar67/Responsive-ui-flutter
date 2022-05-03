import 'package:demo/widget/appbar.dart';
import 'package:demo/widget/stories.dart';
import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            CustomAppBar(),
            SizedBox(height: 20),
            Stories(),
          ],
        ),
      ),
    ));
  }
}
