import 'package:flutter/material.dart';
import 'package:flutter_get/infrastructure/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("Page1"),
            onPressed: () {
              Get.toNamed(Routes.PAGE1);
            },
          ),
          RaisedButton(
            child: Text("Page2"),
            onPressed: () {
              Get.toNamed(Routes.PAGE2);
            },
          ),
          RaisedButton(
            child: Text("Page3"),
            onPressed: () {
              Get.toNamed(Routes.PAGE3);
            },
          ),
        ],
      ),
    );
  }
}
