// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tab_bar/page1.dart';
import 'package:tab_bar/page2.dart';
import 'package:tab_bar/page3.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 131, 187, 133),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page1()));
                    },
                    icon: Icon(Icons.man)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                    icon: Icon(Icons.pedal_bike_sharp)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Page3()));
                    },
                    icon: Icon(Icons.house)),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              // color: Colors.yellow,
              child: TabBarView(controller: tabController, children: [
                Page1(),
                Page2(),
                Page3(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
