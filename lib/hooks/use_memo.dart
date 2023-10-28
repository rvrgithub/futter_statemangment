import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseMemoScreen extends HookWidget {
  const UseMemoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    counter.value++;
    Future<String> fetchData() async {
      await Future.delayed(Duration(seconds: 10));
      return 'Hello world  ${counter.value}';
    }

    final future = useMemoized(fetchData, [counter.value]);
    final spanShot = useFuture(future);

    return Scaffold(
      appBar: AppBar(
        title: Text("UseMemo..."),
      ),
      body: Center(
        child: spanShot.hasData
            ? Text("${spanShot.data}")
            : CircularProgressIndicator(),
      ),
    );
  }
}
