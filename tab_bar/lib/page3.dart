import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1595521624992-48a59aef95e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGhvdXNlJTIwZm9yZXN0fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
              fit: BoxFit.cover)),
    );
  }
}
