import 'package:flutter/material.dart';

class Normal_Mode extends StatelessWidget {
  const Normal_Mode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 224, 221, 221),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, right: 12, left: 12),
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
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Display & Brightness',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 35,
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
          ],
        ),
      ),
    );
  }
}
