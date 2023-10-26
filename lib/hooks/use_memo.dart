import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UseMemoScreen extends HookWidget {
  const UseMemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UseMemo"),
      ),
    );
  }
}