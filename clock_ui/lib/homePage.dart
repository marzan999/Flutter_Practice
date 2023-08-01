import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 223, 221),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.20.h,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Container(
                child: Container(),
              ),
              SizedBox(
                height: 138.h,
              ),
              Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.sp),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '15',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('March',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'World Time',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '10:25',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('India',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 60.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '06:55',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('USA',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 60.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '16:41',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('London',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Reminders',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.w,
                              // color: Colors.red,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 50.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white),
                                      child: Center(
                                          child: Icon(
                                        Icons.cake,
                                        color: Colors.orange,
                                      )),
                                    ),
                                  ),
                                  Positioned(
                                      right: 1,
                                      child: Container(
                                        height: 20.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.red),
                                        child: Center(child: Text('21')),
                                      ))
                                ],
                              ),
                            ),
                            Text('Birthday')
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                         Column(
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.w,
                              // color: Colors.red,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 50.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white),
                                      child: Center(
                                          child: Icon(
                                        Icons.airplanemode_active,
                                        color: Colors.blue,
                                      )),
                                    ),
                                  ),
                                  Positioned(
                                      right: 1,
                                      child: Container(
                                        height: 20.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Color.fromARGB(255, 110, 180, 172)),
                                        child: Center(child: Text('65')),
                                      ))
                                ],
                              ),
                            ),
                            Text('Trip')
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                         Column(
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.w,
                              // color: Colors.red,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      height: 50.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white),
                                      child: Center(
                                          child: Icon(
                                        Icons.house,
                                        color: const Color.fromARGB(255, 247, 0, 255),
                                      )),
                                    ),
                                  ),
                                  Positioned(
                                      right: 1,
                                      child: Container(
                                        height: 20.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: const Color.fromARGB(255, 151, 148, 148)),
                                        child: Center(child: Text('08')),
                                      ))
                                ],
                              ),
                            ),
                            Text('Home Loan')
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 60.h,
                          width: 60.w,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1.h,
            left: MediaQuery.of(context).size.width * 0.15.h,
            child: Container(
              child: CircleAvatar(
                radius: 120.sp,
                backgroundImage: AssetImage('images/5.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





//  Stack(
//                           children: [
//                             Container(
//                               height: 50.h,
//                               width: 50.w,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5),
//                                   color: Colors.white),
//                               child: Center(
//                                   child: Icon(
//                                 Icons.cake,
//                                 color: Colors.orange,
//                               )),
//                             )
//                           ],
//                         ),
//                         Positioned(
//                             child: Container(
//                           height: 20.h,
//                           width: 20.w,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5),
//                               color: Colors.white),
//                           child: Center(
//                               child: Icon(
//                             Icons.cake,
//                             color: Colors.orange,
//                           )),
//                         ))