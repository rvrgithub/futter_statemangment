import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseRefScreen extends HookWidget {
  const UseRefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final name = useState("");

    final contorllerText = useTextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: Text("Use Ref ... "),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter a name ..",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("data"),
        ],
      ),
    );
  }
}
