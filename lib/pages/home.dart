import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';
import '../components/recomended_item.dart';
import '../components/header.dart';

class HomePage extends StatelessWidget {
  final int length;

  const HomePage({
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      bottomNavigationBar: BottomNav(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: List.generate((length / 2).round(), (index) {
                return const RecomendedItem(
                  image: '',
                  price: 100,
                  title: 'Чипсы рифлёные',
                );
              }),
            ),
            Column(
              children: List.generate((length / 2).round(), (index) {
                return const RecomendedItem(
                  image: '',
                  price: 100,
                  title: 'Чипсы рифлёные',
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
