import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderPage extends StatelessWidget {
  SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(height: 500),
          items: _source.map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(color: i),
                  );
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }

  final List _source = [Colors.red, Colors.black, Colors.orange];
}
