import 'package:flutter/material.dart';

class Normal_Mode extends StatelessWidget {
  const Normal_Mode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 221, 221),
      body: Padding(
        padding: const EdgeInsets.only(top: 55, right: 12, left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: const Color.fromARGB(255, 0, 140, 255),
                ),
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Display & Brightness',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Text('    APPEARANCE',
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  image: DecorationImage(
                                      image: AssetImage('images/1.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Light",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              child: Center(
                                  child: Icon(
                                Icons.check_outlined,
                                size: 16,
                                color: Colors.white,
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  image: DecorationImage(
                                      image: AssetImage('images/1.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Dark",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              child: Center(
                                  child: Icon(
                                Icons.check_outlined,
                                size: 16,
                                color: Colors.white,
                              )),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 212, 211, 211),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Autometic',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Stack(
                            children: [
                              Container(
                                height: 35,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromARGB(
                                        157, 158, 158, 158)),
                              ),
                              Positioned(
                                left: 2,
                                top: 1,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Text Size',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 212, 211, 211),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bold Text',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Stack(
                            children: [
                              Container(
                                height: 35,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromARGB(
                                        157, 158, 158, 158)),
                              ),
                              Positioned(
                                left: 2,
                                top: 1,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('    BRIGHTNESS',
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.brightness_low_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 4,
                                  width: 100,
                                  color: Color.fromARGB(255, 8, 30, 235),
                                ),
                              ],
                            ),
                            Positioned(
                              right: 30,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 214, 204, 204),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 4,
                          width: 115,
                          color: const Color.fromARGB(255, 212, 211, 211),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.brightness_high_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 2,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 212, 211, 211),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('True Tone',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Stack(
                            children: [
                              Container(
                                height: 35,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(157, 41, 202, 82)),
                              ),
                              Positioned(
                                right: 2,
                                top: 1,
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.',
              style: TextStyle(
                color: Color.fromARGB(255, 114, 113, 113),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Night Shift',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text('Off  ',
                            style: TextStyle(
                              fontSize: 22,
                            )),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
