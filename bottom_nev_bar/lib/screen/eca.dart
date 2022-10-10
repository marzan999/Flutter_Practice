// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EcaPage extends StatelessWidget {
  const EcaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            'Extra Curricular Activities',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.image_aspect_ratio_sharp),
                ),
                title: Text('Formar Executive Member - DIU CPC'),
                tileColor: Color.fromARGB(255, 242, 247, 246),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.image_aspect_ratio_sharp),
                ),
                title: Text('Former organizer - Mujib Borsho IT Carnival 2021'),
                tileColor: Color.fromARGB(255, 207, 228, 224),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.image_aspect_ratio_sharp),
                ),
                title: Text('Volunteer - Ada Lovelece Celebration 2022'),
                tileColor: Color.fromARGB(255, 148, 218, 204),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.image_aspect_ratio_sharp),
                ),
                title: Text('Two times ICPC preliminary Participant'),
                tileColor: Color.fromARGB(255, 8, 160, 130),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'And, so on.......',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
