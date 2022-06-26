import 'package:flutter/material.dart';
import 'package:learnarhome/screens/screen2.dart';
import 'package:learnarhome/screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen3(),
    );
  }
}
