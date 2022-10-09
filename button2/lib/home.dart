// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 109, 110, 109),
      body: Center(
        child: Container(
          height: 180,
          width: 250,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 94, 92, 92),
              boxShadow: [BoxShadow(offset: Offset(0, 0), blurRadius: 40)]),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.whatsapp,
                  size: 35,
                  color: Color.fromARGB(255, 146, 143, 143),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'WhatsApp',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 146, 143, 143),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
