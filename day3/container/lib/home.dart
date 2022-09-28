// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text('Test project'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        height: 250,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 5),
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(200),
            )),
        child: Text(
          'hello...',
          textAlign: TextAlign.bottomLeft,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
