import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ListOfPrices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/rectangle16.jpg',
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                '102.02₽',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/image4.jpg',
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                '102.02₽',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/rectangle17.jpg',
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                '102.02₽',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/image7.png',
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                '102.02₽',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
