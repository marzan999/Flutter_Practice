// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                color: Color.fromARGB(255, 219, 216, 172),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            )),
                        height: 30,
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Your Score',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 234, 46)),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              '1265',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text('Created'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              '72',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text('Downloaded'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              '256',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text('Uploaded'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DrawerItem(
                        title: 'My Wallet',
                        onTap: () {},
                      ),
                      DrawerItem(
                        text2: '\$95.64',
                        onTap: () {},
                      ),
                    ],
                  ),
                  DrawerItem(
                    title: 'My Trips',
                    onTap: () {},
                  ),
                  DrawerItem(
                    title: 'InviteFriends',
                    onTap: () {},
                  ),
                  DrawerItem(
                    title: 'Promotions',
                    onTap: () {},
                  ),
                  Spacer(),
                  Divider(
                    thickness: 2,
                    color: Color.fromARGB(255, 201, 203, 204),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 192, 191, 185))),
                          onPressed: () {},
                          child: Text(
                            'Settings',
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 192, 191, 185))),
                          onPressed: () {},
                          child: Text(
                            'User Guide',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  )
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
  String? text2;
  VoidCallback? onTap;
  DrawerItem({this.onTap, this.title, this.text2});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: Colors.grey,
      padding: EdgeInsets.only(bottom: 15),
      onPressed: onTap,
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Text(
            '${title ?? ''}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${text2 ?? ''}',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 233, 31)),
          ),
        ],
      ),
    );
  }
}
