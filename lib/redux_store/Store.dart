
// import 'package:flutter_hooks/flutter_hooks.dart';

// import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:my_first_project/redux_store/app.dart';
import 'package:my_first_project/redux_store/combine_reducer.dart';
import 'package:redux/redux.dart';

final store = Store(reducers, initialState: AppState(0, "radhika"));