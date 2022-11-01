// ignore_for_file: prefer_const_constructors

import 'package:dark_mode/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var isDark = Provider.of<ThemeProvider>(
      context,
    ).getThemeData;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   'You have pushed the button this many times:',
            //   style: TextStyle(color: Theme.of(context).primaryColor),
            // ),
            // Image.asset('images/1b.jpg'),
            isDark == true
                ? Image.asset('images/1c.png')
                : Image.asset('images/1b.jpg'),

            SizedBox(
              height: 25,
            ),
            SwitchListTile(
                title: Text(
                  "Change your theme",
                  style: Theme.of(context).textTheme.headline1,
                ),
                value: isDark,
                onChanged: (bool value) {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .setThemeData = value;
                  print("$isDark");
                })
          ],
        ),
      ),
    );
  }
}
