import 'package:container/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Container());
}

class Container extends StatelessWidget {
  const Container({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
