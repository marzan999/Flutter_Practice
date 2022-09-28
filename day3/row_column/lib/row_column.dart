import 'package:flutter/material.dart';

class Row_column_demo extends StatelessWidget {
  const Row_column_demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Practice Row & Column'),
      ),
      //body start
      body: Column(
        children: [
          //image insert
          Image.asset(
            'images/12.png',
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          SizedBox(
            height: 15,
          ),
          //rating part
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rating: ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.star_half),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                )
              ],
            ),
          ),
          //heading name
          Text(
            'Marzan Islam',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
