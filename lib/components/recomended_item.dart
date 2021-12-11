import 'package:flutter/material.dart';

class RecomendedItem extends StatelessWidget {
  final String title;
  final double price;
  final String image;

  const RecomendedItem({
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  '$price руб.',
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
    );
  }
}
