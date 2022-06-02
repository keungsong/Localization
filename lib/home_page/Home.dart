import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            title: Text(' Choose a Language'),
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
