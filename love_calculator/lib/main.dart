// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final TextEditingController _hisname = TextEditingController();
  final TextEditingController _hername = TextEditingController();

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.repeat();
    super.initState();
  }

  void reset() {
    setState(() {
      _hisname.text = "";
      _hername.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;

    void addData() async {
      await FirebaseFirestore.instance.collection('users').add({
        'hisName': _hisname.text,
        'herName': _hername.text,
        'percetage': percentage
      });
    }

    void press() {
      final text1 = _hisname.text;
      final text2 = _hername.text;

      if (text1 != "" && text2 != "") {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Column(
                  children: [
                    Center(
                      child: Text(
                        '${percentage.toStringAsFixed(0)}%',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text("$text1 ❤ $text2"),
                    )
                  ],
                ),
              );
            });
      } else {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Enter The Details"),
              );
            });
      }
      reset();
    }

    LiquidCustomProgressIndicator(
        {required Axis direction,
        required Path shapePath,
        required Text center,
        required AlwaysStoppedAnimation<MaterialColor> valueColor,
        required double value,
        required MaterialAccentColor backgroundColor}) {}

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'images/2.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              FittedBox(
                child: Text(
                  'Calculate your Love',
                  style: GoogleFonts.rubikGlitch(
                      fontSize: 35, color: Color.fromARGB(255, 226, 50, 108)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                    color: Color.fromARGB(110, 184, 184, 156),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 4,
                    )),
                child: TextField(
                  controller: _hisname,
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.male),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                    ),
                    hintText: "HIS NAME",
                    contentPadding: EdgeInsets.only(left: 20, top: 12),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                decoration: BoxDecoration(
                    color: Color.fromARGB(110, 184, 184, 156),
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(width: 4)),
                child: TextField(
                  controller: _hername,
                  decoration: InputDecoration(
                      // fillColor: Colors.amber,
                      // filled: true,
                      prefixIcon: Icon(FontAwesomeIcons.female),
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic,
                          fontSize: 18),
                      hintText: "HER NAME",
                      contentPadding: EdgeInsets.only(left: 20, top: 12),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              InkWell(
                onTap: () => [addData(), press()],

                // _auth.createUserWithEmailAndPassword(email: email, password: password);
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(137, 189, 171, 181),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 4, color: Colors.yellow)),
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 54, 52, 52),
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }

  Path _buildHeartPath() {
    return Path()
      ..moveTo(55, 15)
      ..cubicTo(55, 12, 50, 0, 30, 0)
      ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
      ..cubicTo(0, 55, 20, 77, 55, 95)
      ..cubicTo(90, 77, 110, 55, 110, 37.5)
      ..cubicTo(110, 37.5, 110, 0, 80, 0)
      ..cubicTo(65, 0, 55, 12, 55, 15)
      ..close();
  }
}
