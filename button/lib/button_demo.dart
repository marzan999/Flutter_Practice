// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Those are Pre Made BUtton'),
            SizedBox(
              height: 15,
            ),
            //text button
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(primary: Colors.orange),
                child: Text(
                  'Text Button',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),

            //text button icon
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.textsms,
                  color: Color.fromARGB(255, 19, 18, 18),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 198, 243, 33)),
                label: Text(
                  'Text Button Icon',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 26, 25, 25)),
                )),
            SizedBox(
              height: 10,
            ),

            //eleveted button
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 202, 176, 97)),
                child: Text(
                  'Eleveted Button',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )),
            SizedBox(
              height: 10,
            ),

            //eleveted button icon

            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 112, 174, 216)),
                icon: Icon(Icons.download),
                label: Text("Download")),
            SizedBox(
              height: 10,
            ),

            //eleveted button  again

            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 76, 216, 87)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Icon(
                          Icons.circle_notifications_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 7,
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            //end

            //customized button
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('This is Customized Button'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 225, 225),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 0), blurRadius: 25)
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 221, 95),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(130))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Icon(
                            Icons.snapchat,
                            color: Color.fromARGB(255, 15, 15, 15),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                        child: Text(
                          'Snapchat',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),

                //end
              ],
            )
          ],
        ),
      ),
    );
  }
}
