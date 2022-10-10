// ignore_for_file: prefer_const_constructors

import 'package:bottom_nev_bar/bottom_nev.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom_Nev_Demo(),
    );
  }
}
