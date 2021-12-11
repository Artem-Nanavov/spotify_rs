import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
        right: 25,
        left: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: const Color(0xFFF5F7F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Item(title: '320', value: 'грамм'),
          Item(title: '740', value: 'ккал'),
          Item(title: '10', value: 'белок'),
          Item(title: '10', value: 'жир'),
          Item(title: '155', value: 'углеводы'),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final String value;

  const Item({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: const Color(0xFF000000).withOpacity(0.25),
          ),
        ),
      ],
    );
  }
}
