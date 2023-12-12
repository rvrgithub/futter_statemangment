import 'package:flutter/material.dart';
import 'package:flutter_prectice/getsceen/my_data.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    final myData = Get.arguments as MyData;
    return Scaffold(
      appBar: AppBar(
        title: Text("screen two ..."),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // Get.snackbar("im on second page ", "message........");
                  Get.back();
                  Get.back();
                },
                child: Text("back")),
             Text('Name: ${myData.name}'),  
            Text('Age: ${myData.age.toString()}'),
          ],
        ),
      ),
    );
  }
}
