// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:student_management_system/screens/add_course.dart';
import 'package:student_management_system/screens/update_course.dart';

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

  updatenewCourse() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => UpdateCourse(),
        backgroundColor: Colors.transparent,
        isScrollControlled: true);
  }

  Stream<QuerySnapshot> _courseStream =
      FirebaseFirestore.instance.collection("courses").snapshots();

  deleteData(selectedData) {
    return FirebaseFirestore.instance
        .collection('courses')
        .doc(selectedData)
        .delete()
        .then((value) => print('Data is deleted'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("View Course"),
            backgroundColor: Color.fromARGB(255, 182, 120, 28),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 182, 120, 28),
            onPressed: () => addnewCourse(),
            child: Icon(Icons.add),
          ),
          body: StreamBuilder(
              stream: _courseStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something is Wrong");
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView(
                  children: snapshot.data!.docs.map(
                    (DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      return Container(
                        height: 500,
                        child: Card(
                          elevation: 5,
                          child: Stack(children: [
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      child: Stack(
                                        children: [
                                          Image.network(
                                            data["img"],
                                            height: 300,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            child: Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  MaterialButton(
                                                    color: Colors.white,
                                                    height: 40,
                                                    minWidth: 40,
                                                    onPressed: (() {
                                                      updatenewCourse();
                                                    }),
                                                    child: Icon(
                                                      Icons.edit,
                                                      size: 25,
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  MaterialButton(
                                                    color: Colors.white,
                                                    height: 40,
                                                    minWidth: 40,
                                                    onPressed: (() {
                                                      deleteData(document.id);
                                                    }),
                                                    child: Icon(
                                                      Icons.delete,
                                                      size: 25,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:
                                          Color.fromARGB(255, 123, 136, 135)),
                                  child: Center(
                                    child: Text(
                                      'Subject: ' + data["_courseName"],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color:
                                          Color.fromARGB(255, 123, 136, 135)),
                                  child: Center(
                                    child: Text(
                                      'Fee: ' + data["_courseFee"] + ' tk',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                      );
                    },
                  ).toList(),
                );
              })),
    );
  }
}
