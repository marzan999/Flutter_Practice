import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:student_management_system/screens/add_course.dart';

class ViewCourse extends StatefulWidget {
  const ViewCourse({super.key});

  @override
  State<ViewCourse> createState() => _ViewCourseState();
}

class _ViewCourseState extends State<ViewCourse> {
  addnewCourse() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => AddCourse(),
        backgroundColor: Colors.transparent,
        isScrollControlled: true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            addnewCourse();
          }),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
