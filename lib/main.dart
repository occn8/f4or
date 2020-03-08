import 'package:f4or/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat now App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red,accentColor: Color(0XFFFEF9EB)),
      home: HomePage(),
    );
  }
}
