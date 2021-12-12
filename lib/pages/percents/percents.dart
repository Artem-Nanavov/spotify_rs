import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../../pages/app.dart';
import '../../navigations.dart';

class PercentsSPage extends StatefulWidget {
  const PercentsSPage({Key? key}) : super(key: key);

  @override
  _PercentPageState createState() => _PercentPageState();
}

class _PercentPageState extends State<PercentsSPage> {
  final list_1 = [
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/122021/327248____dg_.jpg',
    'https://lenta.gcdn.co/globalassets/-11/img/327x248px__6.jpg',
  ];

  final list_2 = [
    'https://img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/e7/5c1a2d030d9da96c9dacf348372b.png',
    'https://img.perekrestok.ru/i/400x400-fit/xdelivery/files/93/a4/dd69456be794058558b197c75237.png',
    'https://img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/e7/5c1a2d030d9da96c9dacf348372b.png',
    'https://img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/02/043573c00007b67d958595ea3eb4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                child: Text(
                  'Скидки в магазинах',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xFF000000),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 20),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Лента',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Swiper(
              onTap: (idx) {
                Navigator.pushNamed(
                  context,
                  RoutersNames.percent,
                  arguments: idx.toString(),
                );
              },
              layout: SwiperLayout.STACK,
              itemCount: list_1.length,
              itemBuilder: (context, _idx) {
                return Image.network(
                  list_1[_idx],
                  width: 140,
                );
              },
              itemWidth: 300.0,
              itemHeight: 300.0,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                child: Text(
                  'Перекрёсток',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color(0xFF000000),
                  ),
                ),
                padding: EdgeInsets.only(top: 20, bottom: 30),
              ),
            ),
            Swiper(
              layout: SwiperLayout.STACK,
              itemCount: list_2.length,
              itemBuilder: (context, index) {
                return Image.network(
                  list_2[index],
                  width: 140,
                );
              },
              itemWidth: 300.0,
              itemHeight: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}
