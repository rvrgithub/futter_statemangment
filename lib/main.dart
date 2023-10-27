import 'package:flutter/material.dart';
import 'package:my_first_project/hooks/use_callback.dart';
import 'package:my_first_project/hooks/use_effect.dart';
import 'package:my_first_project/hooks/use_memo.dart';
import 'package:my_first_project/hooks/use_ref.dart';
import 'package:my_first_project/hooks/use_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/useRef",
      routes: {
        "/useState" :(context) => UseStateScreen(),
        "/useCallback" :(context)=> UseCallBackScreen(),
        "/useEffect":(context) => UseEffectScreen(),
        '/useMemo' :(cotnext) => UseMemoScreen(),
        'useRef' :(context) => UseRefScreen(),

      },
    );
  }
}