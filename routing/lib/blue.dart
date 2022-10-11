import 'package:flutter/material.dart';
import 'package:routing/black.dart';
import 'package:routing/green.dart';
import 'package:routing/orange.dart';
import 'package:routing/red.dart';
import 'package:routing/white.dart';
import 'package:routing/yellow.dart';

class Blue extends StatelessWidget {
  const Blue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is BLUE',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Color.fromARGB(255, 129, 143, 204),
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
                    color: Colors.black,
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
                  color: Colors.yellow,
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Yellow()));
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
