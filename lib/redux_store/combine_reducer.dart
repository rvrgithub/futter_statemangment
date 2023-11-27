import 'package:my_first_project/redux_store/action.dart';
import 'package:my_first_project/redux_store/app.dart';
import 'package:my_first_project/redux_store/reducer.dart';
import 'package:redux/redux.dart';

final reducers = combineReducers([
  TypedReducer<AppState, IncrementCount>(CounterReducer),
  TypedReducer<AppState, DecrementCount>(CounterReducer),
  TypedReducer<AppState,ShowUserName>(CounterReducer),
]);