import 'package:my_first_project/redux_store/action.dart';
import 'package:my_first_project/redux_store/app.dart';

AppState CounterReducer(state,action){
if(action is IncrementCount){
  return AppState(state.counter+1, state.userName);
}
else if(action is DecrementCount){
  return AppState(state.counter-1, state.userName);
}
else if(action is ShowUserName){
  return AppState(state.counter, state.userName = action.userName);
}
return state;
}