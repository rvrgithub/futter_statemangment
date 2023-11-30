import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:my_first_project/Provider/class_provider.dart';
import 'package:my_first_project/Provider/provider_screen.dart';
import 'package:my_first_project/bloc_state/bloc_screen.dart';
import 'package:my_first_project/getx_utils/getx_theme.dart';
import 'package:my_first_project/getx_utils/getx_utils_screen.dart';
import 'package:my_first_project/hooks/use_callback.dart';
import 'package:my_first_project/hooks/use_effect.dart';
import 'package:my_first_project/hooks/use_memo.dart';
import 'package:my_first_project/hooks/use_ref.dart';
import 'package:my_first_project/hooks/use_state.dart';
import 'package:my_first_project/hooks/use_value.dart';
import 'package:my_first_project/redux_store/Store.dart';
import 'package:my_first_project/redux_store/redux_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  StoreProvider(
      store: store,
      child: ChangeNotifierProvider(
        create: (_)=>MyClassData(),
       child: GetMaterialApp(
        initialRoute: "/blocScreen",
        routes: {
          "/useState": (context) => UseStateScreen(),
          "/useCallback": (context) => UseCallBackScreen(),
          "/useEffect": (context) => UseEffectScreen(),
          '/useMemo': (cotnext) => UseMemoScreen(),
          '/useRef': (context) => UseRefScreen(),
          "/valueChange": (context) => ValueCahnge(),
          '/provider' :(context) => ProviderScreen(),
          "/getXScreen":(context)=>GetxScreen(),
          "/getXThemeScreen":(context)=> GetxThemeScreen(),
          "/reduxScreen":(context) => ReduxScreen(),
          "/blocScreen":(context)=>BlocScreen(),
        },
      )),
    );
  }
}


 
//getx  
//2 category 
//utils                                  statemanegment
//dialog,snackbar,bottonsheet,routing,.....etc  