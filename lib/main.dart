import 'package:flutter/material.dart';
import 'package:localization/LocaString.dart';
import 'package:localization/page/Home.dart';
import 'package:get/get.dart';
import 'package:localization/page/my_order.dart';
import 'package:localization/page/my_profile.dart';

import 'page/my_favorite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final screen = [HomeScreen(), Favorite(), Orders(), Profile()];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.purple,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                  // backgroundColor: Colors.purple,
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'home'.tr),
              BottomNavigationBarItem(
                  //backgroundColor: Colors.white,
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  label: 'feed'.tr),
              BottomNavigationBarItem(
                  //backgroundColor: Colors.purple,
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                  label: 'order'.tr),
              BottomNavigationBarItem(
                  //backgroundColor: Colors.purple,
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: 'profile'.tr)
            ]),
      );
}
