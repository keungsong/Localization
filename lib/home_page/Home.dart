import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/home_page/About.dart';

class HomeScreen extends StatelessWidget {
  final List locale = [
    {'name': 'English', 'locale': Locale('en', 'US')},
    {'name': 'Lao', 'locale': Locale('lao', 'Laos')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('chooselang'.tr),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: () {
                            updateLanguage(locale[index]['locale']);
                          },
                          child: Text(locale[index]['name'])),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: new Text("Admin"),
              accountEmail: new Text("email"),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.sortiraparis.com/images/80/94880/745683-naturally-le-salon-bio-qui-celebre-la-nature-a-porte-de-versailles.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('profile'.tr),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.question_mark),
              title: Text('about'.tr),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => About())),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('setting'.tr),
              onTap: () => {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.cancel),
              title: Text('signout'.tr),
              onTap: () => Navigator.pop(context, false),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr),
            SizedBox(
              height: 10,
            ),
            Text('message'.tr),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  buildDialog(context);
                },
                child: Text('changelang'.tr))
          ],
        ),
      ),
    );
  }
}
