import 'package:flutter/material.dart';

import '../navigations.dart';

class RecomendedItem extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final int product_id;

  const RecomendedItem({
    required this.title,
    required this.price,
    required this.image,
    required this.product_id,
  });

  @override
  Widget build(BuildContext context) {
    var p = price * 73;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutersNames.product,
          arguments: product_id.toString(),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          margin: const EdgeInsets.only(bottom: 40),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0xFFb5b6b5).withOpacity(0.5)),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Image.network(
                    image,
                    width: 120,
                    height: 120,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '$p руб.',
                    style: const TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
