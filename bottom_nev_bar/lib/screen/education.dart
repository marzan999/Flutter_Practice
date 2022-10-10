// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            'Education',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.cast_for_education),
                ),
                title: Text('B.Sc. in CSE - Dhaka International University'),
                tileColor: Color.fromARGB(255, 242, 247, 246),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.cast_for_education),
                ),
                title: Text('HSC - Gabtali Govt. College'),
                tileColor: Color.fromARGB(255, 207, 228, 224),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.cast_for_education),
                ),
                title: Text('SSC - Gabtali Pilot High School'),
                tileColor: Color.fromARGB(255, 148, 218, 204),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
