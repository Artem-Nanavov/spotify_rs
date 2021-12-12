import 'package:flutter/material.dart';

import '../../pages/app.dart';
import '../../components/recomended_item.dart';
import '../../components/header.dart';

import 'type.dart';

import 'api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Product>> productAlbum;

  @override
  void initState() {
    super.initState();
    productAlbum =
        getProducts('https://fakestoreapi.com/products/category/electronics');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: productAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Product> products = snapshot.data!;

          return SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    ...products
                        .sublist(0, (products.length / 2).round())
                        .map(
                          (Product product) => RecomendedItem(
                            product_id: product.id,
                            image: product.image,
                            price: product.price,
                            title: product.title,
                          ),
                        )
                        .toList(),
                  ],
                ),
                Column(
                  children: [
                    ...products
                        .sublist((products.length / 2).round())
                        .map(
                          (Product product) => RecomendedItem(
                            product_id: product.id,
                            image: product.image,
                            price: product.price,
                            title: product.title,
                          ),
                        )
                        .toList(),
                  ],
                ),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
