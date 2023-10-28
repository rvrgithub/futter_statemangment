import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ValueCahnge extends HookWidget {
  const ValueCahnge({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    final updateCounter = useState(0);
    useValueChanged(counter.value, (oldValue, oldResult) {
      // print(counter.value,);
      print(oldResult);
      print(oldValue);
      // print(updateCounter.value);
      return updateCounter.value = updateCounter.value + 2;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("UseState..."),
      ),
      body: Center(
        child: Column(children: [
          Text("${updateCounter.value}"),
          ElevatedButton(
              onPressed: () {
                counter.value++;
              },
              child: Text("Add..")),
        ]),
      ),
    );
    
  }
}
