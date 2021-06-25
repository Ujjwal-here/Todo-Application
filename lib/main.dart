import 'package:dummy/add.dart';
import 'package:dummy/login.dart';
import 'package:dummy/todo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      debugShowCheckedModeBanner: false,
      home: Todo(),
    );
  }
}
