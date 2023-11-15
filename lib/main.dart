import 'package:flutter/material.dart';
import 'package:ui_instagram/screens/home_page_ins.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: HomePageIns(),
    );
  }
}
