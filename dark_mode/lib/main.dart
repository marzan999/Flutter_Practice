// ignore_for_file: prefer_const_constructors

import 'package:dark_mode/home_page.dart';
import 'package:dark_mode/theme_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeProvider = ThemeProvider();

  getCurrentTheme() async {
    themeProvider.setThemeData = await themeProvider.getTheme();
  }

  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ],
        child: Consumer<ThemeProvider>(builder: (context, themeData, ch) {
          bool isDark = Provider.of<ThemeProvider>(context).getThemeData;
          return MaterialApp(
            theme: ThemeData(
                textTheme: TextTheme(
                  headline1: TextStyle(
                      fontSize: 30, color: isDark ? Colors.yellow : Colors.red),
                  bodyText1: TextStyle(
                      fontSize: 18,
                      color: isDark ? Colors.black : Colors.white),
                ),
                scaffoldBackgroundColor: isDark ? Colors.black : Colors.white,
                primarySwatch: Colors.blue,
                primaryColor: isDark ? Colors.black : Colors.orange,
                secondaryHeaderColor: isDark ? Colors.black : Colors.white,
                appBarTheme:
                    AppBarTheme(color: isDark ? Colors.white : Colors.red)),
            home: MyHomePage(title: 'Flutter Demo Home Page'),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}
