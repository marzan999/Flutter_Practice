// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic>? weatherMap;
  Map<String, dynamic>? forecastMap;
  fetchWeatherData() async {
    String weatherUrl =
        'https://api.openweathermap.org/data/2.5/weather?lat=37.4219983&lon=122.084&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR0BccOYK9qFjmf2TTdAfo5BQLiFTf6wajC9R51BoXnLgMltJJKN-q4zhuk';
    String forecastUrl =
        'https://api.openweathermap.org/data/2.5/forecast?lat=37.4219983&lon=122.084&units=metric&appid=f92bf340ade13c087f6334ed434f9761&fbclid=IwAR0BccOYK9qFjmf2TTdAfo5BQLiFTf6wajC9R51BoXnLgMltJJKN-q4zhuk';

    var weatherResponse = await http.get(Uri.parse(weatherUrl));
    var forecastResponse = await http.get(Uri.parse(forecastUrl));

    weatherMap = Map<String, dynamic>.from(jsonDecode(weatherResponse.body));
    forecastMap = Map<String, dynamic>.from(jsonDecode(forecastResponse.body));

    setState(() {});
  }

  @override
  void initState() {
    fetchWeatherData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 690,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 182, 195, 206),
                        Color.fromARGB(255, 94, 122, 173),
                        Color.fromARGB(255, 163, 100, 175),
                      ],
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '${weatherMap!['name']}',
                      style: GoogleFonts.roboto(
                        fontSize: 55,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${Jiffy(DateTime.now()).format(
                          'MMM do yyy, h:mm a',
                        )}',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Image.asset('images/a.png'),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${weatherMap!['weather'][0]['description']}',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${weatherMap!['main']['temp']}°',
                      style: GoogleFonts.roboto(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Feels like ${weatherMap!['main']['feels_like']}°',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Humidity ${weatherMap!['main']['humidity']} & Pressure ${weatherMap!['main']['pressure']}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sunrise ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!['sys']['sunrise'] * 1000)).format('h:mm a')} & Sunset ${Jiffy(DateTime.fromMillisecondsSinceEpoch(weatherMap!['sys']['sunset'] * 1000)).format('h:mm a')}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: forecastMap!.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 27,
                          ),
                          Text(
                            '${Jiffy(forecastMap!['list'][index]['dt_txt']).format('EEE h:mm')}',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Image.network(
                              'https://openweathermap.org/img/wn/${forecastMap!['list'][index]['weather'][0]['icon']}@2x.png'),
                          Text(
                            '${forecastMap!['list'][index]['weather'][0]['description']} ',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 182, 195, 206),
                              Color.fromARGB(255, 178, 185, 75),
                              Color.fromARGB(255, 137, 187, 80),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
