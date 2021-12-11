import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../../components/bottom_nav.dart';

class PercentPage extends StatefulWidget {
  const PercentPage({Key? key}) : super(key: key);

  @override
  _PercentPageState createState() => _PercentPageState();
}

class _PercentPageState extends State<PercentPage> {
  int _index = 0;
  int _index2 = 0;

  final imageList = [
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
    'https://lenta.gcdn.co/globalassets/action_NEW/112021/_327248------.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      bottomNavigationBar: BottomNav(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60, left: 20, bottom: 20),
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
                  padding: EdgeInsets.only(bottom: 15),
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
                layout: SwiperLayout.STACK,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    'assets/image8.jpeg',
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
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    'assets/image12.png',
                    width: 140,
                  );
                },
                itemWidth: 300.0,
                itemHeight: 300.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
