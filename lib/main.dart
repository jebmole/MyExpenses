import 'package:flutter/material.dart';
import './src/pages/home.dart';

void main() => runApp(MyExpensesApp());

class MyExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
