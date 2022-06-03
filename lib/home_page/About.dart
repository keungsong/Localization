import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/home_page/Home.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about'.tr),
        leading: IconButton(
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
            icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
