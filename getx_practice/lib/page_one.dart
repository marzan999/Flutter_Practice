import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/page_two.dart';

class PageOne extends StatefulWidget {
  PageOne({super.key, });

 

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Page - 1')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: nameController,
              ),
            ),
            Center(
                child: TextButton(
                    onPressed: () {
                      Get.to(PageTwo(nameController.text.toString()));
                    },
                    child: Text('Go to Page - 2')))
          ],
        ));
  }
}
