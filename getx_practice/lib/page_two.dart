import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  PageTwo(this.name);
  var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Page - 2')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello, $name',
            ),
            Center(
                child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Go to Page - 1')))
          ],
        ));
  }
}
