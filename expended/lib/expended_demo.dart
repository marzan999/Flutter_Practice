// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Expended_demo extends StatelessWidget {
  const Expended_demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Expended Task'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 15,
              child: Container(
                color: Colors.amber,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Color.fromARGB(255, 235, 177, 5),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Color.fromARGB(255, 228, 172, 6),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Color.fromARGB(255, 129, 99, 10),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Color.fromARGB(255, 88, 71, 18),
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Color.fromARGB(255, 230, 187, 60),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 224, 198, 119),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Color.fromARGB(255, 224, 208, 158),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 235, 214, 146),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 199, 179, 114),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 124, 113, 76),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 53, 48, 34),
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 226, 221, 204),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 240, 240, 236),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 235, 235, 221),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 200, 206, 206),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 185, 183, 176),
                                            )),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 249, 250, 250),
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
              )),
          Expanded(
              flex: 8,
              child: Container(
                color: Color.fromARGB(255, 118, 226, 215),
                child: Column(
                  children: [
                    Expanded(
                        flex: 13,
                        child: Container(
                          color: Color.fromARGB(255, 144, 207, 198),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 10, 10, 10),
                        )),
                    Expanded(
                        flex: 16,
                        child: Container(
                          color: Color.fromARGB(255, 63, 204, 183),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 10, 10, 10),
                        )),
                    Expanded(
                        flex: 19,
                        child: Container(
                          color: Color.fromARGB(255, 14, 129, 112),
                        )),
                  ],
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                color: Color.fromARGB(255, 233, 240, 239),
                child: Row(
                  children: [
                    Expanded(
                        flex: 30,
                        child: Container(
                          color: Color.fromARGB(255, 183, 233, 183),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 10, 10, 10),
                        )),
                    Expanded(
                        flex: 40,
                        child: Container(
                          color: Color.fromARGB(255, 115, 204, 115),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 10, 10, 10),
                        )),
                    Expanded(
                        flex: 50,
                        child: Container(
                          color: Color.fromARGB(255, 68, 214, 68),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Color.fromARGB(255, 10, 10, 10),
                        )),
                    Expanded(
                        flex: 60,
                        child: Container(
                          color: Color.fromARGB(255, 7, 206, 7),
                        )),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Color.fromARGB(255, 10, 10, 10),
              )),
          Expanded(
              flex: 20,
              child: Container(
                color: Color.fromARGB(255, 13, 14, 13),
                child: Row(
                  children: [
                    Expanded(
                        flex: 30,
                        child: Container(
                          color: Color.fromARGB(255, 183, 233, 183),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 24, 62, 233),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Color.fromARGB(255, 99, 110, 209),
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 30,
                        child: Container(
                          color: Color.fromARGB(255, 115, 204, 115),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Color.fromARGB(255, 182, 105, 218),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 187, 55, 219),
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 30,
                        child: Container(
                          color: Color.fromARGB(255, 68, 214, 68),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Color.fromARGB(255, 233, 24, 198),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    color: Color.fromARGB(255, 133, 3, 90),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 199, 149, 191),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 179, 113, 168),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 185, 86, 167),
                                            )),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Color.fromARGB(255, 233, 24, 198),
                                  )),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 30,
                        child: Container(
                          color: Color.fromARGB(255, 245, 247, 245),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 243, 243, 241),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 211, 188, 113),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 175, 149, 63),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 218, 163, 12),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 243, 243, 241),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 211, 188, 113),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 175, 149, 63),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Color.fromARGB(255, 218, 163, 12),
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
              )),

          //end
        ],
      ),
    );
  }
}
