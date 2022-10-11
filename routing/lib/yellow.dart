import 'package:flutter/material.dart';
import 'package:routing/black.dart';
import 'package:routing/blue.dart';
import 'package:routing/green.dart';
import 'package:routing/orange.dart';
import 'package:routing/red.dart';
import 'package:routing/white.dart';

class Yellow extends StatelessWidget {
  const Yellow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is YELLOW',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Color.fromARGB(255, 203, 204, 139),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => White()));
              },
              child: Text('Go to HOME'),
            ),
            SizedBox(
              height: 80,
            ),
            Text('If you want to go any color, then click this color',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Green()));
                  },
                ),
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Black()));
                  },
                ),
                MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Red()));
                  },
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Blue()));
                  },
                ),
                MaterialButton(
                  color: Colors.orange,
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Orange()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
