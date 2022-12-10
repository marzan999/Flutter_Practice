import 'dart:convert';

import 'package:api_test_1/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  String link =
      'https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json?fbclid=IwAR0PDhO_MVKiZaUxo0RaG2M0Kt-qVyxwQf3n';
  List<Exercise> allData = [];
  late Exercise exercise;

  fetchData() async {
    var responce = await http.get(Uri.parse(link));

    if (responce.statusCode == 200) {
      var data = jsonDecode(responce.body);
      for (var i in data['exercises']) {
        exercise = Exercise(
            id: i["id"],
            title: i["title"],
            thumbnail: i["thumbnail"],
            seconds: i["seconds"],
            gif: i['gif']);
        setState(() {
          allData.add(exercise);
        });
      }
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("${allData[0].title}"),
            ],
          ),
        ),
      ),
    );
  }
}
