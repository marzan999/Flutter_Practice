// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Row_column_demo extends StatelessWidget {
  const Row_column_demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Practice Row & Column'),
      ),
      //body start
      body: SingleChildScrollView(
        child: Column(
          children: [
            //image insert
            Image.asset(
              'images/12.png',
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            SizedBox(
              height: 15,
            ),
            //rating part
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rating: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star_half),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  )
                ],
              ),
            ),

            //heading name
            Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 187, 204, 218),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(
                child: Text(
                  'Marzan Islam',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            //contacts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.facebook),
                    Text(
                      'Facebook',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.whatsapp),
                    Text('WhatsApp',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.call),
                    Text('Call',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.message),
                    Text('Message',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  'My Information',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'I am Marzan Islam. I am studying at Dhaka International University, dept. of  CSE. I love problem solving. Cause, it makes me active and helps me to think different. I am really enjoying my work what I am doing and always ready to learn new technology.',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
