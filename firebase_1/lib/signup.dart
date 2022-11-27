// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_1/dbhealper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final auth = Dbhelper();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 204, 180, 144),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(13)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.orange),
                      borderRadius: BorderRadius.circular(13)),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromARGB(255, 66, 125, 145)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(13)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.orange,
                      ),
                      borderRadius: BorderRadius.circular(13)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color.fromARGB(255, 66, 125, 145),
                      ),
                      borderRadius: BorderRadius.circular(13)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    var e = _emailController.text;
                    var p = _passwordController.text;
                    Dbhelper db = Dbhelper();
                    db.signUp(e, p);
                  },
                  child: Text('Sign Up'))
            ],
          ),
        ),
      ),
    );
  }
}
