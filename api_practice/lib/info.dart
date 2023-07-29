import 'dart:convert';

//import 'package:api_practice/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  List<Product> allData = [];

  Future<List<Product>> getProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map i in data) {
        Product product = Product(
          id: i["id"],
          title: i["title"],
          price: i["price"],
          description: i["description"],
        );
        allData.add(product);
      }
      return allData;
    } else {
      return allData;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 106, 179, 171),
      appBar: AppBar(
        title: Text('API Call'),
      ),
    );
  }
}

class Product {
  String? id, title, price, description;

  Product({required id, required title, required price, required description});
}
