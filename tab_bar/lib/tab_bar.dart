// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tab_bar/page1.dart';
import 'package:tab_bar/page2.dart';
import 'package:tab_bar/page3.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Tab Bar',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 2,
              color: Colors.black,
            ),
            Container(
              color: Color.fromARGB(255, 243, 206, 206),
              child: TabBar(
                  indicator:
                      BoxDecoration(color: Color.fromARGB(255, 206, 191, 127)),
                  indicatorColor: Colors.orange,
                  controller: tabController,
                  labelColor: Colors.teal,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.man),
                    ),
                    Tab(
                      icon: Icon(Icons.pedal_bike_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.house),
                    ),
                  ]),
            ),
            Container(
              height: 2,
              color: Colors.black,
            ),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: [
                Page1(),
                Page2(),
                Page3(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
