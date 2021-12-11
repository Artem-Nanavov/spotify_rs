import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';
import '../components/recomended_item.dart';
import '../components/header.dart';

import '../types/product.dart';

import '../utils/api.dart';

class HopePage extends StatefulWidget {
  const HopePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HopePage> {
  late Future<List<Product>> productAlbum;

  @override
  void initState() {
    super.initState();
    productAlbum = getProducts('https://fakestoreapi.com/products');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      bottomNavigationBar: BottomNav(),
      appBar: CustomAppBar(),
      body: FutureBuilder<List<Product>>(
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
                          .map(
                            (Product product) => RecomendedItem(
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
                          .map(
                            (Product product) => RecomendedItem(
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

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
