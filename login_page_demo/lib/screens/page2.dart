import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // Text('Hello...'),
          child: Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/f9/13/46/f9134655b53cbeaeb00664b04371b9b0.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
