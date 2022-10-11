import 'package:flutter/material.dart';
import 'package:routing/white.dart';

class Orange extends StatelessWidget {
  const Orange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is ORANGE',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Color.fromARGB(255, 219, 151, 95),
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
