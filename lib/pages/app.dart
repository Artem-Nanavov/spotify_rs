import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/cart/cart.dart';
import 'package:flutter_application_2/pages/home/index.dart';
import 'package:flutter_application_2/pages/percents/percents.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavState();
  }
}

class BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 18),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: BottomNavigationBar(
              backgroundColor: const Color(0xFF353335),
              unselectedItemColor: const Color(0xFFffffff),
              selectedItemColor: Colors.amber[800],
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                _currentIndex = value;
                setState(() {});
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/home.svg'),
                  activeIcon: SvgPicture.asset(
                    'assets/home.svg',
                    color: Colors.amber[800],
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/percent.svg'),
                  label: 'Percent',
                  activeIcon: SvgPicture.asset(
                    'assets/percent.svg',
                    color: Colors.amber[800],
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/bookmark.svg'),
                  label: 'favotite',
                  activeIcon: SvgPicture.asset(
                    'assets/bookmark.svg',
                    color: Colors.amber[800],
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/shopping-bag.svg'),
                  label: 'Shop',
                  activeIcon: SvgPicture.asset(
                    'assets/shopping-bag.svg',
                    color: Colors.amber[800],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(children: [
        [
          HomePageContainer(),
          // PercentsSPage(),
          // CartPage(),
          // Home(_cent), //widget one
          // FormCard(widget.model), //widget two
          // Messages()  //widget three
        ][_currentIndex], //Alter widgets with changing index
      ]),
    );
  }
}
