// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:exam_1/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              flex: 10,
              child: Container(
                color: Color.fromARGB(255, 111, 218, 115),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 70, 15, 0),
                  child: Column(
                    children: [
                      //bar start
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'FINTIMES',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Icon(
                            Icons.menu,
                            size: 32,
                          )
                        ],
                      ),
                      //bar end
                      SizedBox(
                        height: 50,
                      ),
                      //text start
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Everything',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Color.fromARGB(255, 116, 109, 109)),
                          )),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'about investing\nplus way more.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          )),
                      //text end

                      //end
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 27, 0, 27),
                        color: Color.fromARGB(255, 111, 218, 115),
                        child: Center(
                            child: Text(
                          'Become our member',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          color: Colors.white,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Page2()));
                              },
                              icon: Icon(
                                Icons.add,
                                size: 30,
                              )))),
                ],
              ),
            ),
          ),
          //end
        ],
      ),
    );
  }
}
