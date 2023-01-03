// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interview_ui_solve/model/food_info.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  final a = FoodInfo.generatedProductList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(137, 17, 17, 17),
        body: Padding(
          padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Find Your\nFavoutite Food',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 290,
                      child: TextField(
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'What do you want to order?',
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Color.fromARGB(255, 112, 108, 108),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 112, 108, 108),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.select_all,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Popular Menu',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              // ListView.builder(
              //     itemCount: 3,
              //     itemBuilder: ((context, index) {
              //       return Container(
              //         height: 100,
              //         width: 200,
              //         color: Colors.yellow,
              //         child: Column(
              //           children: [Text('data')],
              //         ),
              //       );
              //     }))
              // Text(a[1].name,style: TextStyle(color: Colors.white),),
              Container(
                height: 430,
                child: ListView.builder(
                  
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Color.fromARGB(255, 105, 105, 105),
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                             
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(a[index].image, ), fit: BoxFit.cover
                                      ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )
                                ],
                              ),
                            )),
                      );
                    }),
              ),
              Container(
                height: 70,
                color: Colors.yellow,
              )
            ],
          ),
        ),
      ),
    );
  }
}
