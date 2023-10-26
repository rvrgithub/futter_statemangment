

// import 'package:flutter/material.dart';
// class UseEffectScreen extends StatefulWidget {
//   const UseEffectScreen({super.key});

//   @override
//   State<UseEffectScreen> createState() => _UseEffectScreenState();
// }

// class _UseEffectScreenState extends State<UseEffectScreen> {
//   int counter =0;
// void initState(){
//   super.initState();
// final timer = Timer.periodic(Duration(seconds: 1), (abc) {
//   setState(() {
//     counter =abc.tick;
//   });
//   print(counter);
//  });
// }
//   @override
  
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("UseEffect Use .."),
//       ),
//        body: Center(
//         child: Column(
//           children: [
//             Text('counter Value :-- ${counter}'),
//             // ElevatedButton(onPressed: (){
//             //   timerfun;
//             // } , child: Text("click me"))
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseEffectScreen extends HookWidget {
  const UseEffectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter =useState(0);
    useEffect(() {
final timer = Timer.periodic(Duration(seconds: 1), (timer) {
  counter.value++;
 },);

 return()=> timer.cancel();
    },[]);
    return Scaffold(
      appBar: AppBar(
        title: Text("UesEffect Screen"),
      ),
      body: Center(
        child: Text("Counter:- ${counter.value}"),
      ),
    );
  }
}