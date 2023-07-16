// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.keyboard_double_arrow_left_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                      Center(
                        child: Container(
                          height: 250,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 175, 20),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Card',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '**** **** **** 0000',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '00/00',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '***',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                      ),
                                    ),
                                    Positioned(
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                      ),
                                    )
                                  ],

                                  // child: Row(
                                  //   children: [
                                  //     Container(
                                  //       height: 40,
                                  //       width: 40,
                                  //       decoration: BoxDecoration(
                                  //           color: Colors.blue,
                                  //           borderRadius: BorderRadius.all(
                                  //               Radius.circular(50))),
                                  //     ),
                                  //     Container(

                                  //       height: 40,
                                  //       width: 40,
                                  //       decoration: BoxDecoration(
                                  //           color: Colors.blue,
                                  //           borderRadius: BorderRadius.all(
                                  //               Radius.circular(50))),
                                  //     ),
                                  //   ],
                                  // ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  // color: Colors.green,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, top: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Balance',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.menu,
                              size: 35,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            'Last Transaction',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
