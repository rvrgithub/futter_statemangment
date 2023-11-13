import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/getx_utils/getx_theme.dart';
import 'package:my_first_project/getx_utils/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Screen One"),
),
      body: Center(
        child: Column(children: [
          Text("Screen One"),
         ElevatedButton( child: Text("Move to next page.."),
         onPressed: (){
    Get.to(ScreenTwo(), arguments: "Radhika is typing here...");
         },)
        ]),
      ),
    );
  }
}