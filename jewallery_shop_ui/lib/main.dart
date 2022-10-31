import 'package:flutter/material.dart';
import 'package:jewallery_shop_ui/widget/home.dart';
import 'package:jewallery_shop_ui/widget/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeP(),
    );
  }
}
