// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;
// import 'package:api_jewelry/product_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> products = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      setState(() {
        products = json.decode(response.body);
      });
    } else {
      print('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 233, 233),
      // body: ListView.builder(
      //   itemCount: products.length,
      //   itemBuilder: (context, index) {
      //     final product = products[index];
      //     return ListTile(
      //       leading: Image.network(product['image']),
      //       title: Text(product['title']),
      //       subtitle: Text('\$${product['price']}'),
      //     );
      //   },
      // ),
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 199, 233, 233),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Mr. Marzan',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fHww&w=1000&q=80',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'What do you want for your friend?',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 40,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      // ignore: unused_local_variable
                      final product = products[index];
                      return Container(
                        height: 30.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            // color: const Color.fromARGB(255, 62, 166, 170),
                            color: Colors.white
                            ),
                            // child: Container(
                            //   height: 10,
                            //   width: 10,
                            //   color: Colors.black,
                            // ),
                        //child: Text('${product['price']}')
                        // child: CircleAvatar(
                        //   //radius: 6,
                        //   backgroundImage: NetworkImage(product['image']),
                        // ),
                        // child: Container(
                        //   child: Image.network(
                        //     product['image'],
                        //     height: 25.h,
                        //     width: 25.w,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        // child: Container(
                        //   height: 25.h,
                        //   width: 25.w,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(50),
                        //     image: DecorationImage(image: NetworkImage(product['image']), fit: BoxFit.cover)
                        //   ),
                        // ),
                      );
                    },
                    separatorBuilder: (_, index) => SizedBox(
                          width: 10.w,
                        ),
                    itemCount: products.length),
              ),
              // Container(
              //   height: 340,
              //   child: ListView.separated(
              //     itemCount: products.length,
              //     separatorBuilder: (_, index) => SizedBox(
              //       height: 10.h,
              //     ),
              //     itemBuilder: (context, index) {
              //       final product = products[index];
              //       // return ListTile(
              //       //   title: Text(product['title']),
              //       //   subtitle: Text('\$${product['price']}'),
              //       //  // leading: Image.network(product['image']),
              //       // );
              //       return Container(
              //         height: 50.h,
              //         width: 50.w,
              //         color: Colors.red,
              //       );
              //     },
              //   ),
              // )


              Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.black
        ),
         child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.red),
        ),
       
      ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0).r,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 62, 166, 170),
            padding: EdgeInsets.all(15).r,
            tabs: [
              GButton(icon: Icons.home, hoverColor: Colors.grey, iconActiveColor: Colors.black, iconColor: Colors.white,),
              GButton(icon: Icons.search, hoverColor: Colors.grey,iconActiveColor: Colors.black, iconColor: Colors.white),
              GButton(icon: Icons.favorite_border_outlined,hoverColor: Colors.grey,iconActiveColor: Colors.black, iconColor: Colors.white,),
              GButton(icon: Icons.notifications,hoverColor: Colors.grey,iconActiveColor: Colors.black, iconColor: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}
