// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:row_column/row_column.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Row_column_demo(),
    );
  }
}
