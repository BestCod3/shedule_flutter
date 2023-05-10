import 'package:flutter/material.dart';
import 'package:table_flutter/pages/homePage.dart';
import 'package:table_flutter/pages/teachers.dart';

void main(List<String> args) {
  runApp(MyTable());
}

class MyTable extends StatelessWidget {
  const MyTable();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
