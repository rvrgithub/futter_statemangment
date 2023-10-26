import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseCallBackScreen extends HookWidget {
  const UseCallBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    final func = useCallback(()=>{
    counter.value++
    });
    // print(counter.value);
    return Scaffold(
      appBar: AppBar(
        title: Text("CallBack Screen..."),
      ),
      body: Center(
        child: Column(
          children: [
            Text('counter Value :-- ${counter.value}'),
            ElevatedButton(onPressed: (){
              func();
            } , child: Text("click me"))
          ],
        ),
      ),
    );
  }
}