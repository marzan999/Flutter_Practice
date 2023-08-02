import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Image.network(
                'https://img.freepik.com/free-photo/sweet-potato-falafel-recipe-idea-vegan_53876-110666.jpg?w=360',
                fit: BoxFit.cover,
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 32).h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 180.h,
                          width: 100.w,
                          child: Column(
                            children: [
                              Container(
                                height: 80.h,
                                width: 65.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.h),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          'https://media.istockphoto.com/id/1222018207/photo/pouring-milk-into-a-drinking-glass.jpg?s=612x612&w=0&k=20&c=eD4YHoSjKIYSPDgnM2OgWD_HVH2IcmjZSRq7IjUnH6M=',
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Milk',
                                style: TextStyle(fontSize: 25.sp),
                              ),
                              Text('__'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '200',
                                    style: TextStyle(fontSize: 25.sp),
                                  ),
                                  Text(
                                    'ml',
                                    style: TextStyle(
                                        fontSize: 20.sp, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 180.h,
                          width: 100.w,
                          //  color: Colors.pink,
                          child: Column(
                            children: [
                              Container(
                                height: 80.h,
                                width: 65.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.h),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          'https://static.toiimg.com/thumb/88520288.cms?width=573&height=430',
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Egg',
                                style: TextStyle(fontSize: 25.sp),
                              ),
                              Text('__'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '35',
                                    style: TextStyle(fontSize: 25.sp),
                                  ),
                                  Text(
                                    'g',
                                    style: TextStyle(
                                        fontSize: 20.sp, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 180.h,
                          width: 100.w,
                          // color: Colors.pink,
                          child: Column(
                            children: [
                              Container(
                                height: 80.h,
                                width: 65.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.h),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2017/01/06/17/49/honey-1958464_1280.jpg',
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Honey',
                                style: TextStyle(fontSize: 25.sp),
                              ),
                              Text('__'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '12',
                                    style: TextStyle(fontSize: 25.sp),
                                  ),
                                  Text(
                                    'g',
                                    style: TextStyle(
                                        fontSize: 20.sp, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 70.h,
                      width: 250.w,
                      child: Center(
                        child: Text(
                          'FAVOR',
                          style: TextStyle(
                              fontSize: 30.sp,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 5,
                            color: const Color.fromARGB(255, 124, 107, 113)),
                        borderRadius: BorderRadius.circular(45.r),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20.0).h,
                      child: Icon(
                        Icons.house,
                        color: Colors.blue,
                        size: 30.sp,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
