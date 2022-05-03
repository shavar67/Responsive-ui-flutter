import 'package:demo/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'responsive Layout Builder',
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(244, 243, 246, 1)),
        home: const HomePage());
  }
}
