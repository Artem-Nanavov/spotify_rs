import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatelessWidget {
  BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            type: BottomNavigationBarType.fixed,
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
    );
  }
}
