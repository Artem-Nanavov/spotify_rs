import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class BestPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: const [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Лучшая цена',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'в Перекрёсток',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
