import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/getx_utils/screen_one.dart';

class GetxThemeScreen extends StatelessWidget {
  const GetxThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThemeGet X"),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  ElevatedButton(
                      child: Text("change theme"),
                      onPressed: () {
                        Get.bottomSheet(Container(
                          decoration: BoxDecoration(
                            color:Colors.amber,
                          ),
                          child: Column(children: [
                            ListTile(
                                title: Text('Dark Mode.. '),
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                }),
                                 ListTile(
                                title: Text('Light Mode.. '),
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                })
                          ]),
                        ));
                      }),

                      ElevatedButton(onPressed: (){
                        Get.to(ScreenOne());
                      }, child: Text("go to page one"))
                ],
              ),
              // title:"Change Theme ",
            )
          ],
        ),
      ),
    );
  }
}
