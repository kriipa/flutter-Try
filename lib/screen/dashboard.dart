import 'package:flutter/material.dart';

import 'bottom_screen/cart.dart';
import 'bottom_screen/home.dart';
import 'bottom_screen/profile.dart';
import 'bottom_screen/settings.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class DashboardScreen extends StatefulWidget {

  DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  List<Widget> lstBottonScreen = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // appBar : AppBar(
    //   title: const('Dashboard'),
    // );
    return Scaffold(
      body: lstBottonScreen[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 119, 98, 90),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'cart',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'settings',
            ),
        ],
        
      ),
    );
  }
}