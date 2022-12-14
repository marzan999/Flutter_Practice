import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_management_system/screens/splash.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key});

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  TextEditingController _addcoursename = TextEditingController();
  TextEditingController _addcoursefee = TextEditingController();
  XFile? _courseImage;
  String? _imgUrl;
  chooseImageFromCG() async {
    ImagePicker _picker = ImagePicker();
    _courseImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  sendData() async {
    File _imageFile = File(_courseImage!.path);
    FirebaseStorage _storage = FirebaseStorage.instance;
    UploadTask _uploadTask =
        _storage.ref('courses').child(_courseImage!.name).putFile(_imageFile);
    TaskSnapshot _snapshot = await _uploadTask;
    _imgUrl = await _snapshot.ref.getDownloadURL();
    CollectionReference _course =
        await FirebaseFirestore.instance.collection('courses');
    _course.add(({
      '_courseName': _addcoursename.text,
      '_courseFee': _addcoursefee.text,
      'img': _imgUrl
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _addcoursename,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'Add Course Name',
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _addcoursefee,
              decoration: InputDecoration(
                  hintText: 'Add Course Fee',
                  prefixIcon: Icon(Icons.attach_money),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: _courseImage == null
                    ? IconButton(
                        icon: Icon(Icons.camera),
                        onPressed: () {
                          chooseImageFromCG();
                        },
                      )
                    : Image.file(File(_courseImage!.path))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 182, 120, 28)),
                onPressed: () {
                  sendData();
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Splash()));
                  });
                },
                child: Text('Add Course'))
          ],
        ),
      ),
    );
  }
}
