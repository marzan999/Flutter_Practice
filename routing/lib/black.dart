import 'package:flutter/material.dart';
import 'package:routing/white.dart';

class Black extends StatelessWidget {
  const Black({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is BLACK',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Color.fromARGB(255, 85, 82, 82),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => White()));
              },
              child: Text('Go to HOME'),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
