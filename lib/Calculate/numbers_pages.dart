import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {

  final List<String>button = [
    "1","2","3", "4","5","6","7","8","9","0",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title:Text("new value"),
      ),
      body:Center(),

    );
  }
}