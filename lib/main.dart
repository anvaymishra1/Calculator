import 'package:flutter/material.dart';
import 'home_page.dart';
void main() => runApp (new MyApp());
class MyApp extends StatelessWidget{ @override
Widget build(BuildContext context) {
  return new MaterialApp(
    title: "Calculator",
    theme: new ThemeData(
      primarySwatch: Colors.amber,
      brightness: Brightness.dark,
      accentColor: Colors.amber
    ),
    home: new HomePage(),
  );
}}