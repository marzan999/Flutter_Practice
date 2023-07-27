import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 143, 166),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Text(
                'My Name is Marzan',
                style: TextStyle(fontSize: 35.sp),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.teal,
            ),
            SizedBox(
              height: 40.h,
            ),
            TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            )),
            SizedBox(
              height: 40,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 25.h),
              ),
            )
          ],
        ),
      ),
    );
  }
}
