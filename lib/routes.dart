import 'package:flutter/material.dart';
import 'package:restaurant_system/responsive/responsive_layout.dart';
import 'package:restaurant_system/screens/food/food_mobile.dart';
import 'package:restaurant_system/screens/home/home_mobile.dart';
import 'package:restaurant_system/screens/order/order_mobile.dart';
import 'package:restaurant_system/screens/setting/setting_mobile.dart';

import 'package:badges/badges.dart' as badges;

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pageWidget = [
    const ResponsiveLayout(
      mobileScaffold: HomeMobile(),
      tabletScaffold: HomeMobile(),
    ),
    const ResponsiveLayout(
      mobileScaffold: FoodMobile(),
      tabletScaffold: FoodMobile(),
    ),
    const ResponsiveLayout(
      mobileScaffold: OrderMobile(),
      tabletScaffold: OrderMobile(),
    ),
    const ResponsiveLayout(
      mobileScaffold: SettingMobile(),
      tabletScaffold: SettingMobile(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int value = 4;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: badges.Badge(
              badgeContent: Text('$value'),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              showBadge: (value <= 0) ? false : true,
              child: const Icon(Icons.shopping_cart),
            ),
            label: 'Order',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: _pageWidget[_selectedIndex],
      ),
    );
  }
}
