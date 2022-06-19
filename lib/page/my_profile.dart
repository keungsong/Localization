import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/main.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'.tr),
        leading: IconButton(
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MainScreen())),
            icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
