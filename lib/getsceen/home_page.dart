import 'package:flutter/material.dart';
import 'package:flutter_prectice/getsceen/screen_one.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Home Page.."),
    ),
    body: Center(
      child: Column(children: [
ElevatedButton(onPressed: (){
  Get.to(ScreenOne());
}, child: Text("move"))

      ])
    ),
    );
  }
}