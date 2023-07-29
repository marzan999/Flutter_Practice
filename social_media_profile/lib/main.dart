// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_profile/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Profile(),
      );
    });
  }
}
