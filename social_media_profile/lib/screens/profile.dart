// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.person,
                  size: 30,
                ),
                Text(
                  'For You',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.message_rounded,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 540,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://img.freepik.com/premium-photo/lovely-young-blonde-woman-standing-isolated-pink-wall-celebrating_171337-97455.jpg'),
                            fit: BoxFit.cover)),

                    // ),
                  ),
                ),
                Positioned(
                  top: 440,
                  left: 35,
                  child: Container(
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Color.fromARGB(206, 255, 255, 255)),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Malena Veronica, 23',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Fashion Designer at Victoria\'s Secret',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 234, 234),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.close,
                      size: 35,
                      color: const Color.fromARGB(255, 124, 123, 123),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 234, 234),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.star,
                      size: 30,
                      color: Color.fromARGB(255, 47, 124, 197),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 236, 234, 234),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Color.fromARGB(255, 245, 4, 4),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
