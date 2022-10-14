// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 35, 20, 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/310317422_3491082591214865_3375686245547736538_n.jpg?stp=dst-jpg_s960x960&_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeF8BQEwIrMT6PbQC1S0gbc3bD8Lsx719BFsPwuzHvX0ESjNfR1K3OzVusgZhWq17nYZVmNQQKOZ9MiU5b6laimI&_nc_ohc=OIXAAjO87TwAX_a2iXm&_nc_ht=scontent.fdac31-1.fna&oh=00_AT8MaaBS3T-SvzHK1GpudyJdGX6nbGJnBOArBaIwiaH3ow&oe=634E5366'),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: NetworkImage(
                        'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/293768483_3415146582141800_1671152816391752882_n.jpg?stp=dst-jpg_s1080x2048&_nc_cat=109&ccb=1-7&_nc_sid=a4a2d7&_nc_eui2=AeHjdlJoP3-p9o4WSFlDxjARcwH3mzy6BpZzAfebPLoGlob1jZGhp53ox2oRx9iFJHAEMbl2duWsK-PNV_gPgcSS&_nc_ohc=7SahNms4cqkAX8VLeqv&_nc_ht=scontent.fdac31-1.fna&oh=00_AT-NTGfa-2Oi4sewnG6t_adNIFQhSP0cXe0AJjbBJbTslQ&oe=634F07F5'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'Marzan Islam',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Student',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  DrawerItem(
                    icon: Icons.call,
                    title: 'Call',
                    onTap: () {},
                  ),
                  DrawerItem(
                    icon: Icons.mail,
                    title: 'Email',
                    onTap: () {},
                  ),
                  DrawerItem(
                    icon: Icons.message,
                    title: 'Message',
                    onTap: () {},
                  ),
                  DrawerItem(
                    icon: Icons.add_chart,
                    title: 'Chart',
                    onTap: () {},
                  ),
                  Spacer(),
                  Divider(
                    thickness: 2,
                    color: Colors.blue,
                  ),
                  DrawerItem(
                    icon: Icons.facebook,
                    title: 'Facebook',
                    onTap: () {},
                  ),
                  DrawerItem(
                    icon: Icons.whatsapp,
                    title: 'WhatsApp',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  String? title;
  IconData? icon;
  VoidCallback? onTap;
  DrawerItem({this.icon, this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.only(bottom: 15),
      onPressed: onTap,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 15,
          ),
          Text(
            '$title',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
