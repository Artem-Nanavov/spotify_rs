import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'best_price.dart';
import 'info.dart';
import 'list_of_prices.dart';

class Details extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final int product_id;
  final String desc;
  final double rait;

  const Details({
    required this.title,
    required this.price,
    required this.image,
    required this.product_id,
    required this.desc,
    required this.rait,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.network(
                image,
                width: double.infinity,
              ),
            ),
            BestPrice(),
            ListOfPrices(),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Информация о товаре',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  desc,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Info(),
            Container(
              margin: const EdgeInsets.only(top: 45),
              child: RatingBar.builder(
                initialRating: rait,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star_border_outlined,
                  color: Color(0xFFED6B7D),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
