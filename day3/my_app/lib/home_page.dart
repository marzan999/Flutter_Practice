// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(218, 255, 255, 255),
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
        alignment: Alignment.center,
        margin: EdgeInsets.all(15),
        height: 250,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 160, 187, 207),
                offset: Offset(10, 10))
          ],
          border: Border.all(color: Colors.black, width: 5),
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            Color(0xff98FB98),
            Color(0xffFFC0CB),
            Color.fromARGB(255, 220, 233, 43),
            Color.fromARGB(255, 228, 219, 227),
            Color.fromARGB(255, 132, 204, 50),
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
        ),
        child: Text(
          'hello, I am Marzan  :)',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
