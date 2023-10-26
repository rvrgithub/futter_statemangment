import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ....using usefullwidget
// class UseStateScreen extends StatefulWidget {
//   const UseStateScreen({super.key});

//   @override
//   State<UseStateScreen> createState() => _UseStateScreenState();
// }

// class _UseStateScreenState extends State<UseStateScreen> {
//   int counter = 0;
//   void increamentCounterValue (){
//     setState(() {
//       counter++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
// return Scaffold(
//   appBar: AppBar(
//     title: Text("UseState..."),
//     ),
//       body:Center(
//       child: Column(children: [
//         Text("${counter}"),
//         ElevatedButton(
//           onPressed: increamentCounterValue
//         , child: Text("Add Me"))
//       ]),
//   ),
// );
//   }
// }

class UseStateScreen extends HookWidget {
  const UseStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    void increamentCounterValue() {
      counter.value++;
      print(counter.value);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("UseState..."),
      ),
      body: Center(
        child: Column(children: [
          Text("${counter.value}"),
          ElevatedButton(
              onPressed: increamentCounterValue, child: Text("Add..")),
        ]),
      ),
    );
  }
}


// import 'package:flutter_hooks/flutter_hooks.dart';
