import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          'This is app bar',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          Icon(
            Icons.add_a_photo,
            color: Colors.black54,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Color(0xff98FB98),
                Color(0xffFFC0CB),
                Color.fromARGB(255, 220, 233, 43),
                Color.fromARGB(255, 228, 219, 227),
                Color.fromARGB(255, 132, 204, 50),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
      ),
    );
  }
}
