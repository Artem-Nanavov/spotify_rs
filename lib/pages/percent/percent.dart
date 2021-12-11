import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/go_back_app_bar.dart';

class PercentComponent extends StatelessWidget {
  final String title;
  // final double price;
  // final String image;
  // final int product_id;
  // final String desc;
  // final double rait;

  const PercentComponent({
    required this.title,
    // required this.price,
    // required this.image,
    // required this.product_id,
    // required this.desc,
    // required this.rait,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: GoBackAppBar(title: title),
      body: Padding(
        padding: EdgeInsets.only(right: 16, left: 16),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/image8.jpeg',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 46,
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF353335),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // color: Color(0xFF353335),
                  child: const Center(
                    child: Text(
                      'Пиротехника -50%',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color(0xFFffffff),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    '10.02.2021 - 20.02.2021',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: const Center(
                    child: Text(
                      'Подробная информация',
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
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '''
                      Хлопушки. Салюты. Огни. 🎆
10 и 11 декабря приобретайте со скидкой 50% любую ПИРОТЕХНИКУ:
✨ салюты,
✨ бенгальские огни и хлопушки,
✨ ракеты,
✨ фонтаны,
✨ и другую пиротехнику.
Украсьте небо яркими огнями в новогоднюю ночь🎉
 
Действует ограничение на покупку: салюты многозарядные – не более 10 шт., фонтаны – не более 15 шт.
Акция действует только в «Гипер Ленте».
 
Настоящая публикация не является офертой. Актуальная информация о цене, наличии товара, ограничениях, сроках и географии проведения акции представлена на сайте lenta.com
                      ''',
                      style: TextStyle(
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
