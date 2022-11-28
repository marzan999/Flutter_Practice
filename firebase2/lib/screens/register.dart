// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registration Page'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 102, 167, 104),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  labelText: 'Name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
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
                controller: _phoneController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Phone',
                  labelText: 'Phone',
                  prefixIcon: Icon(
                    Icons.call,
                    color: Colors.grey,
                  ),
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
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Age',
                  labelText: 'Age',
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    color: Colors.grey,
                  ),
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
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Address',
                  labelText: 'Address',
                  prefixIcon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
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
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 92, 173, 95)),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Success"),
                        content: const Text("Registration Completed!"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text("okay"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text('Register Now'))
            ],
          ),
        ),
      ),
    );
  }
}
