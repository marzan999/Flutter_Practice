import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_practice/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SecondScreenController secondScreenController =
      Get.put(SecondScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GetX')),
        ),
        body: Column(
          children: [
            Text('Notification'),
            Obx(() => Switch(
                value: secondScreenController.notification.value,
                onChanged: (value) {
                  secondScreenController.setNotification(value);
                })),
          ],
        ));
  }
}
