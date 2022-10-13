// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_page/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
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
          margin: EdgeInsets.only(top: 300),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 15, 0),
            child: Form(
              key: _formKey,
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
                    // validator: ((value) {
                    //   if (value!.isEmpty) {
                    //     return 'Email field required';
                    //   }
                    //   if (!value!.contains('@gmail.com')) {
                    //     return 'Invalid email';
                    //   }
                    // }),
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      filled: true,
                      hintText: 'Name',
                      labelText: 'Name',
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
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return 'Email field required';
                      }
                      if (!value!.contains('@gmail.com')) {
                        return 'Invalid email';
                      }
                    }),
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
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
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return 'Password is empty';
                      }
                      if (value.length < 4) {
                        return 'Password is too short';
                      }
                      if (value.length > 10) {
                        return 'Password is too long';
                      }
                    }),
                    keyboardType: TextInputType.text,
                    obscureText: isObsicure,
                    obscuringCharacter: '*',
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsicure = !isObsicure;
                          });
                        },
                        icon: Icon(isObsicure == false
                            ? Icons.visibility
                            : Icons.visibility_off),
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
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          // print('The value is ${emailController.text} ');
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Page2()));
                          } else {
                            print('Something is wrong. Try again');
                          }
                        },
                        child: Text('Sign up')),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isObsicure = false;
}
