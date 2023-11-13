import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class GetxScreen extends StatelessWidget {
  const GetxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get X utils screen"),
      ),

      body: Column(
        children: [
          ElevatedButton(
            child: Text("ggf"),
            onPressed: (){
              Get.snackbar("Alert"," check you phone....", snackPosition: SnackPosition.TOP);
          print("getx");
          }),
          ElevatedButton(
            child: Text("bhj b"),
            onPressed: (){
         Get.defaultDialog(
    
        confirm: Text("Ok"),
        // cancel: Text("Cancel"),
        // textConfirm: ("yes"),
       content: Column(
        children: [
         Text("allertt"),

        ],
       )
      );},),
        ],
      ),
    );
  }
}
