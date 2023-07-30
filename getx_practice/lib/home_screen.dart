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
  List<String> fruitName = ['Apple', 'Banana', 'Lichi', 'Pine-Apple'];
  List<String> tempfruitName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GetX')),
        ),
        body: ListView.builder(
            itemCount: fruitName.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    if (tempfruitName.contains(fruitName[index].toString())) {
                      tempfruitName.remove(fruitName[index].toString());
                    } else {
                      tempfruitName.add(fruitName[index].toString());
                    }
                    setState(() {});
                  },
                  title: Text(fruitName[index].toString()),
                  trailing: Icon(
                    Icons.favorite,
                    color: tempfruitName.contains(fruitName[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                ),
              );
            }));
  }
}
