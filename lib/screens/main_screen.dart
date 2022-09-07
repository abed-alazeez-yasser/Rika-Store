import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/Models/bn_screen.dart';
import 'package:rika/screens/cart_screen.dart';
import 'package:rika/screens/home_screen.dart';
import 'package:rika/screens/notification_screen.dart';
import 'package:rika/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<BnScreen> _bnScreen = <BnScreen>[
    BnScreen(wideget: const HomeScreen(), title: 'Home'),
    BnScreen(wideget: const CartScreen(), title: 'cart'),
    BnScreen(wideget: const NotificationScreen(), title: 'Notification'),
    BnScreen(wideget: const ProfileScreen(), title: 'profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bnScreen[_selectedIndex].wideget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/home.svg'),
            activeIcon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/cart1.svg'),
            activeIcon: const Icon(Icons.shopping_basket_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/notification.svg'),
            activeIcon: const Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/profiles.svg'),
            activeIcon: const Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
