import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/botton_navbar/bt_navbar.dart';
import 'package:localization/page/About.dart';
import 'package:localization/page/Setting.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:localization/page/dasboad.dart';
import 'package:localization/page/my_favorite.dart';
import 'package:localization/page/my_order.dart';
import 'package:localization/page/my_profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              )),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: new Text("Username"),
              accountEmail: new Text("email"),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.sortiraparis.com/images/80/94880/745683-naturally-le-salon-bio-qui-celebre-la-nature-a-porte-de-versailles.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.purple,
              ),
              title: Text('profile'.tr),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Profile())),
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark,
                color: Colors.purple,
              ),
              title: Text('about'.tr),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => About())),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.purple,
              ),
              title: Text('setting'.tr),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Setting())),
            ),
            Divider(
              color: Colors.purple,
            ),
            ListTile(
              leading: Icon(
                Icons.cancel,
                color: Colors.red,
              ),
              title: Text('signout'.tr),
              onTap: () => Navigator.pop(context, false),
            )
          ],
        ),
      ),
      body: Dasboad(),
    );
  }
}
