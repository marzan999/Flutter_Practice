import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        children: [
          Card(
            child: ListTile(
              title: Text('Dialog Box'),
              subtitle: Text('.................'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Exit',
                    middleText: 'Are you quit?',
                    // textConfirm: 'Yes',
                    // textCancel: 'No');
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Yes')),
                    cancel: TextButton(onPressed: () {}, child: Text('No')));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Botton Sheet'),
              subtitle: Text('---------------'),
              onTap: () {
                Get.bottomSheet(Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
