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
  Future<List<Product>> getProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      List<Product> allData = []; // Move this declaration inside the method
      for (Map i in data) {
        Product product = Product(
          id: i["id"],
          title: i["title"],
          price: i["price"].toString(),
          description: i["description"],
        );

        allData.add(product);
      }
      return allData;
    } else {
      throw Exception('Failed to load products');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 106, 179, 171),
      appBar: AppBar(
        title: Text('API Call'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Product>>(
              future: getProducts(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index].price.toString()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  String? title, description;
  int? id;
  String? price;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
  });
}
