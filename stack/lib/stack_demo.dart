// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.teal,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Color.fromARGB(255, 71, 226, 211),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 70, bottom: 70),
                    child: Container(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
