// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                )),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.green,
                ))
          ],
        ),
      ),
    );
  }
}
