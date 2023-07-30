import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_practice/favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('GetX')),
        ),
        body: ListView.builder(
            itemCount: controller.fruitName.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    onTap: () {
                      if (controller.tempfruitName
                          .contains(controller.fruitName[index].toString())) {
                        controller.removeFromFavourite(
                            controller.fruitName[index].toString());
                      } else {
                        controller.addToFavourite(
                            controller.fruitName[index].toString());
                      }
                    },
                    title: Text(controller.fruitName[index].toString()),
                    trailing: Obx(
                      () => Icon(
                        Icons.favorite,
                        color: controller.tempfruitName.contains(
                                controller.fruitName[index].toString())
                            ? Colors.red
                            : Colors.white,
                      ),
                    )),
              );
            }));
  }
}
