// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Card - Contact List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 242, 247, 246),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 207, 228, 224),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 148, 218, 204),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 123, 221, 202),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 78, 221, 192),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 32, 221, 183),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 60, 161, 141),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 18, 109, 91),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 3, 94, 76),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('Marzan'),
                subtitle: Text('0123456789'),
                trailing: Icon(Icons.call),
                tileColor: Color.fromARGB(255, 1, 63, 51),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
