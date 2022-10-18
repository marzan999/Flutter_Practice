// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 15),
              Text(
                'Online Shopping',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Life is easy here...',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 201, 209, 130)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '10% discount',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/laptop.jpeg',
                                    height: 60,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 201, 209, 130)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '18% discount',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/camera.jpeg',
                                    height: 60,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 201, 209, 130)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '1% discount',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/mobile.jpg',
                                    height: 60,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 201, 209, 130)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                '35% discount',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'images/airpods.jpg',
                                    height: 60,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [Text('data')],
              )
            ],
          ),
        ),
      ),
    );
  }
}
