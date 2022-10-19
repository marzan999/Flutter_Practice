// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/310317422_3491082591214865_3375686245547736538_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeF8BQEwIrMT6PbQC1S0gbc3bD8Lsx719BFsPwuzHvX0ESjNfR1K3OzVusgZhWq17nYZVmNQQKOZ9MiU5b6laimI&_nc_ohc=3ZXhnzUir-AAX-VWxZc&_nc_ht=scontent.fdac31-1.fna&oh=00_AT9InClKymD_1CwKGInraJf0nQPw7J0NQIDmlv6UvAhTvQ&oe=63544226"),
              fit: BoxFit.cover)),
    );
  }
}
