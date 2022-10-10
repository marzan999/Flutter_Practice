// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bottom_nev_bar/screen/achievement.dart';
import 'package:bottom_nev_bar/screen/eca.dart';
import 'package:bottom_nev_bar/screen/education.dart';
import 'package:bottom_nev_bar/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom_Nev_Demo extends StatefulWidget {
  const Bottom_Nev_Demo({super.key});

  @override
  State<Bottom_Nev_Demo> createState() => _Bottom_Nev_DemoState();
}

class _Bottom_Nev_DemoState extends State<Bottom_Nev_Demo> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    EducationPage(),
    AchievementPage(),
    EcaPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 212, 171),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  backgroundColor: Colors.amber,
                ),
                GButton(
                  icon: Icons.cast_for_education,
                  text: 'Education',
                  backgroundColor: Color.fromARGB(255, 123, 231, 35),
                ),
                GButton(
                  icon: Icons.architecture,
                  text: 'Achievement',
                  backgroundColor: Color.fromARGB(255, 7, 197, 255),
                ),
                GButton(
                  icon: Icons.sign_language,
                  text: 'ECA',
                  backgroundColor: Color.fromARGB(255, 112, 114, 224),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
