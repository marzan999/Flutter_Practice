import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/page_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GetX')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: TextButton(
                    onPressed: () {
                      Get.to(PageOne());
                    },
                    child: Text('Go to Page - 1')))
          ],
        ));
  }
}
