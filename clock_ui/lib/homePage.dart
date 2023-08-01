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
                    borderRadius:BorderRadius.circular(25)
                        ),
              ),
              Container(
                
                child: Container(
                  //height: double.infinity,
                  //color: Color.fromARGB(255, 95, 175, 171),
                ),
              ),
             SizedBox(height: 146.h,),
             Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(60.sp),color: Colors.white),
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