import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_project/Provider/class_provider.dart';
import 'package:my_first_project/Provider/provider_screen.dart';
import 'package:my_first_project/getx_utils/getx_theme.dart';
import 'package:my_first_project/getx_utils/getx_utils_screen.dart';
import 'package:my_first_project/hooks/use_callback.dart';
import 'package:my_first_project/hooks/use_effect.dart';
import 'package:my_first_project/hooks/use_memo.dart';
import 'package:my_first_project/hooks/use_ref.dart';
import 'package:my_first_project/hooks/use_state.dart';
import 'package:my_first_project/hooks/use_value.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>MyClassData(),
     child: GetMaterialApp(
      initialRoute: "/getxThemeScreen",
      routes: {
        "/useState": (context) => UseStateScreen(),
        "/useCallback": (context) => UseCallBackScreen(),
        "/useEffect": (context) => UseEffectScreen(),
        '/useMemo': (cotnext) => UseMemoScreen(),
        '/useRef': (context) => UseRefScreen(),
        "/valueChange": (context) => ValueCahnge(),
        '/provider' :(context) => ProviderScreen(),
        "/getxScreen":(context)=>GetxScreen(),
        "/getxThemeScreen":(context)=> GetxThemeScreen(),
      },
    ));
  }
}


 
//getx  
//2 category 
//utils                                  statemanegment
//dialog,snackbar,bottonsheet,routing,.....etc  