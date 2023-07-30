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
            Obx(
              () => Container(
                height: 300,
                width: 300,
                color: Colors.teal
                    .withOpacity(secondScreenController.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                  value: secondScreenController.opacity.value,
                  onChanged: (value) {
                    secondScreenController.setOpacity(value);
                  }),
            ),
          ],
        ));
  }
}
