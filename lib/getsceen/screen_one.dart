import 'package:flutter/material.dart';
import 'package:flutter_prectice/getsceen/my_data.dart';
import 'package:flutter_prectice/getsceen/screen_two.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen One ..."),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              final myData = MyData(age: 100, name: "Radhika verma");
              Get.to(ScreenTwo(),arguments: myData);
            }, child: Text("Move to page second screen"))
          ],
        ),
      ),
    );
  }
}