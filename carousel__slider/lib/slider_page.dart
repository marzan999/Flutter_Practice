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
          options: CarouselOptions(height: MediaQuery.of(context).size.height*0.6, autoPlay: true, enlargeCenterPage: true ),
          items: _imageUrl.map(
            (imagepath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                   child: Image.network(imagepath,fit: BoxFit.cover,),
                  );
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }

  //final List _source = [Colors.red, Colors.black, Colors.orange];
final List _imageUrl = [
  'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNPBUOfhRtlXr9RxoEvw2y_1x3tlIByu31peBdvit7obQseDceUwebNW16RDv-mzkh-As&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBi40wSYfv1ZNtM5yrVFyby2UnxrhE4KWQvg&usqp=CAU',
  'https://www.indiaspend.com/h-upload/2022/07/26/760990-natural-farming-explained-1500.jpg',
  'https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8bmF0dXJhbHxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://c1.wallpaperflare.com/preview/414/533/69/nature-royal-enfield-man-season.jpg'
];
}
