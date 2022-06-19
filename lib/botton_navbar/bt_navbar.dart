import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          label: 'Feed'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Cart'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
    ]));
  }
}
