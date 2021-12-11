import 'package:flutter/material.dart';

import '../../components/bottom_nav.dart';
import '../../components/recomended_item.dart';
import '../../components/header.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      bottomNavigationBar: BottomNav(),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          child: Column(
            children: [
              const AuthItem(
                img: 'assets/image15.jpg',
                status: 'ВЫЙТИ',
                subTitle: 'yandex.member@ya.ru',
                title: 'Яндекс Маркет',
                color: Color(0xFFED6B7D),
              ),
              AuthItem(
                img: 'assets/image151.jpg',
                status: 'ВХОД',
                subTitle: 'yandex.member@ya.ru',
                title: 'Озон',
                color: Color(0xFF005BFF).withOpacity(0.5),
              ),
              AuthItem(
                img: 'assets/image15.png',
                status: 'ВХОД',
                subTitle: 'yandex.member@ya.ru',
                title: 'Wildberries',
                color: Color(0xFF81118B).withOpacity(0.5),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AuthItem extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;
  final String status;
  final Color color;

  const AuthItem({
    required this.img,
    required this.title,
    required this.subTitle,
    required this.status,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 12,
        bottom: 12,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: const Color(0xFFFFFFFF),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000).withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(img),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      subTitle,
                      style: const TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 80,
            height: 20, // <-- Your width
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: color,
                textStyle: const TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color(0xFF000000),
                ),
              ),
              onPressed: () {},
              child: Text(status),
            ),
          )
        ],
      ),
    );
  }
}
