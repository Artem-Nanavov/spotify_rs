import 'package:flutter/material.dart';

import 'components/product_details.dart';

import '../../components/go_back_app_bar.dart';

import './type.dart';

import './api.dart';

class ProductPage extends StatefulWidget {
  final String product_id;

  const ProductPage({Key? key, required this.product_id}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState(product_id: product_id);
}

class _ProductPageState extends State<ProductPage> {
  final String product_id;

  _ProductPageState({
    required this.product_id,
  });

  late Future<ProductDetail> productDetailAlbum;

  @override
  void initState() {
    super.initState();
    productDetailAlbum =
        getDetails('https://fakestoreapi.com/products/$product_id');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: GoBackAppBar(),
      body: FutureBuilder<ProductDetail>(
        future: productDetailAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            ProductDetail productDetail = snapshot.data!;

            return Details(
              desc: productDetail.description,
              image: productDetail.image,
              price: productDetail.price,
              product_id: productDetail.id,
              title: productDetail.title,
              rait: 3.1,
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
