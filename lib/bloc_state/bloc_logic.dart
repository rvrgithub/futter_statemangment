// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_first_project/bloc_state/bloc_events.dart';
// import 'package:my_first_project/bloc_state/bloc_state.dart';

// class BlocLogic extends Bloc<ContivityEvents,ConnectivityState>{
// final connectivity = Connectivity();
// BlocLogic(): super(ConenctivityInitailState()){
//   on<ConnectionEstablisht>(
//     ((event, emit) => emit(ConnectivityEstablish())));
//     on<ConnectionLost>((event, emit) => emit(ConnectivityLost()));
//     connectivity.onConnectivityChanged.listen((result){
//       if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi ){
//         add(ConnectionEstablisht());
//       }
//       else{
//         add(ConnectionLost());
//       }
//     });
// }
// }

// cubit ...

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ConnectivityState { Intial, Lost, Gain }

class BlocLogic extends Cubit<ConnectivityState> {
  final connectivity = Connectivity();
  BlocLogic() : super(ConnectivityState.Intial) {
    connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        emit(ConnectivityState.Gain);
      } else {
        emit(ConnectivityState.Lost);
      }
    });
  }
}
