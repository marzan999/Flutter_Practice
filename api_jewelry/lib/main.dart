import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> jewelryData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final url = 'https://fakestoreapi.com/products/category/jewelery';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        setState(() {
          jewelryData = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Jewelry Products'),
        ),
        body: ListView.builder(
          itemCount: jewelryData.length,
          itemBuilder: (context, index) {
            final product = jewelryData[index];
            return ListTile(
              title: Text(product['title']),
              subtitle: Text('\$${product['price']}'),
              leading: Image.network(product['image']),
            );
          },
        ),
      ),
    );
  }
}
