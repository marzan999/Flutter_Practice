// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routing/black.dart';
import 'package:routing/blue.dart';
import 'package:routing/green.dart';
import 'package:routing/orange.dart';
import 'package:routing/red.dart';
import 'package:routing/yellow.dart';

class White extends StatelessWidget {
  const White({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 177, 174, 174),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Click any color',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Red()));
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Green()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Black()));
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
                    color: Colors.yellow,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Yellow()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Orange()));
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 80),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Blue()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       height: 150,
              //       width: 150,
              //       color: Colors.red,
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Container(
              //       height: 150,
              //       width: 150,
              //       color: Colors.orange,
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       height: 150,
              //       width: 150,
              //       color: Colors.green,
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Container(
              //       height: 150,
              //       width: 150,
              //       color: Colors.black,
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       height: 150,
              //       width: 150,
              //       color: Colors.blue,
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Container(
              //       height: 150,
              //       width: 150,
              //       color: Colors.yellow,
              //     ),
              //   ],
              // ),
            ],
          ),
        ));
  }
}
