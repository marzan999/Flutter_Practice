// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text(
            'Hi, I am Marzan Islam',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          expandedHeight: MediaQuery.of(context).size.height * 0.40,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
            'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/278972334_3347429252246867_7161400306471730210_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=lbHMejDfF10AX97UUM4&_nc_ht=scontent.fdac31-1.fna&oh=00_AT8QGpPdc72U-TTGM5o_oP2g-_mvTouYNffK3B76zMBSfw&oe=63498BC3',
            fit: BoxFit.cover,
          )),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'About me',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.arrow_right_alt),
                  ),
                  title: Text(
                      'I am a final year student of Computer Science and Engineering student at Dhaka International University.'),
                  tileColor: Color.fromARGB(255, 212, 211, 207),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.arrow_right_alt),
                  ),
                  title: Text(
                      'I am from Bogura. At present, I am staying at Kalabagan, Lake Circus, Dhanmondi-32'),
                  tileColor: Color.fromARGB(255, 212, 211, 207),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.arrow_right_alt),
                  ),
                  title: Text(
                      'I am good at drawing. I also love playing football, cricket and so on game.'),
                  tileColor: Color.fromARGB(255, 212, 211, 207),
                ),
              ),
              // Text(
              //   'About me',
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 30),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(
              //     child: Text(
              //       ' ***    I am a final year student of Computer Science and Engineering student at Dhaka International University.',
              //       style: TextStyle(color: Colors.black, fontSize: 20),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(
              //     child: Text(
              //       ' ***    I am from Bogura. At present, I am staying at Kalabagan, Lake Circus, Dhanmondi-32',
              //       style: TextStyle(color: Colors.black, fontSize: 20),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(
              //     child: Text(
              //       ' ***    I am good at drawing. I also love playing football, cricket and so on game.',
              //       style: TextStyle(color: Colors.black, fontSize: 20),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Text(
                    '  Thank you :)  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
