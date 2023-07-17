// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 237, 236),
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
            Container(
              height: 540,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/premium-photo/lovely-young-blonde-woman-standing-isolated-pink-wall-celebrating_171337-97455.jpg'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
