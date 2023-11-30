import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/getx_utils/getx_theme.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(children: [
          Text("Screen Two"),
          Text(data),
          ElevatedButton(
            child: Text("Move to next page.."),
            onPressed: () {
              Get.back();
              Get.back();
            },
          )
        ]),
      ),
    );
  }
}
