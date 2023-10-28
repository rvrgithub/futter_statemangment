import 'package:flutter/material.dart';
import 'package:my_first_project/Provider/class_provider.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyClassData>(context, listen:false);
    print("call to build functions ....");
    return Scaffold(
      appBar: AppBar(
        title: Text('Provder'),
      ),
      body: Center(child:
      Column(
        children: [
        Consumer<MyClassData>(builder: (context ,value ,child )
        {
          return Text(value.counter.toString());
        })
        ],
      ),
      ),
    );
  }
}