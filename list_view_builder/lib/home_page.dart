// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.white, title: Text('')),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(2, 65, 2, 2),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(35)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 239, 239),
                      borderRadius: BorderRadius.circular(35)),
                  child: ListTile(
                    title: Text('Search for apps & games'),
                    leading: Icon(Icons.search),
                    trailing: Icon(Icons.mic),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 146, 146, 144),
                      borderRadius: BorderRadius.circular(35)),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'For you',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Top search',
                            style: TextStyle(color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Kids',
                            style: TextStyle(color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Catagories',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Social media apps',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://img.utdstc.com/icon/fe0/ab6/fe0ab67fa0de2b2681602db5708a076f50dd21106e0c2d38b9661875a37e235e:200'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                height: 120,
                                width: 120,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://pm1.narvii.com/6429/19e7f1f6a78bd27df832a665a2d483d27bdac0a7_00.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Instagram',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://assets.mofoprod.net/network/images/whatsapp_logo.original.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'WhatsApp',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://blog.logomyway.com/wp-content/uploads/2020/12/twitter-logo.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Twitter',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Video games apps',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://www.xda-developers.com/files/2018/06/pubg.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                height: 120,
                                width: 120,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'PUBG',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLZE_CymonYu_Zp08Ie7-QwgYNNwlPcMwutXTE3C3ufp533SNps3tNomcdKaUP05Lho_0&usqp=CAU'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'FIFA-22',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cf.shopee.com.my/file/2acda9cf7b34b9a8e1e3b0805ad1720a'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Vice City',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.shopify.com/s/files/1/1791/4087/products/games-ludo-game-perfect-dealz-14320732241994_f9ccc3c2-76d2-4348-b626-122a44f5bc5f.jpg?v=1637844405'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Ludo',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //end
            ],
          ),
        ),
      ),
    );
  }
}
