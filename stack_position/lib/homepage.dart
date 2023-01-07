import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50))),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5 - (MediaQuery.of(context).size.width * 0.2),
            left: MediaQuery.of(context).size.width * 0.3,
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.4,
              // width: MediaQuery.of(context).size.width * 0.4,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP1o_IyKPGY9T9pqeAxKwz7lqHKFBrnVHKnKCB9SgppxX7wdJpUfPFs-2pMn5B4NUodAM&usqp=CAU'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
