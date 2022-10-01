// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 241, 241),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Color.fromARGB(255, 202, 178, 178), width: 3)),
              child: CircleAvatar(
                radius: 95,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?w=2000'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //text
            Text(
              'Alexa',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mobile Application Developer',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              leading: Icon(Icons.call),
              title: Text('0123456789'),
              subtitle: Text('Phone Number'),
              tileColor: Color.fromARGB(255, 223, 221, 214),
            ),

            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              leading: Icon(Icons.email),
              title: Text('abc12@gmail.com'),
              subtitle: Text('E-mail'),
              tileColor: Color.fromARGB(255, 223, 221, 214),
            ),

            SizedBox(
              height: 25,
            ),
            Text(
              'Contact me',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://image.shutterstock.com/image-vector/facebook-icon-vector-illustration-social-260nw-2109892373.jpg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.news18.com/ibnlive/uploads/2022/03/instagram-logo-1.jpg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://play-lh.googleusercontent.com/RLgRM7JfXhkHDQLgpOam614I3G58I874jPt6yVnzh3Cd2JzNk8h5mUwY4p48qbmH5Q=w600-h300-pc0xffffff-pd'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png'),
                  ),
                ),
              ],
            )
            //end
          ],
        ),
      ),
    );
  }
}
