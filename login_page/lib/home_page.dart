// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://vitotechnology.com/gallery/images/how-to-choose-a-stargazing-app-2021/1920x1080.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white),
          margin: EdgeInsets.only(top: 260),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create an account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Start your carrer with us'),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    filled: true,
                    hintText: 'Enter your email',
                    labelText: 'Enter your email',
                    // hintStyle: TextStyle(),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.orange)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.orange)),

                    //end
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: passwordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
                    filled: true,
                    hintText: 'Enter your password',
                    labelText: 'Enter your password',
                    // hintStyle: TextStyle(),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.orange)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.orange)),

                    //end
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      print('The value is ${emailController.text} ');
                    },
                    child: Text('submit')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
