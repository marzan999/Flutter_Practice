// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grid_view/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  login() {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => Page2());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Image Picker')),
      body: Center(
          child: Text(
        'This is home page....',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          login();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
