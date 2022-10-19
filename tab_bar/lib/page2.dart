import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i0.wp.com/wallpapersfortech.com/wp-content/uploads/2020/09/Desert-Motocycle-HD-Wallpaper.jpg?fit=668%2C1080&ssl=1"),
              fit: BoxFit.cover)),
    );
  }
}
