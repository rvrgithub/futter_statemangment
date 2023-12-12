import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_prectice/new_counter_bloc/counter_event.dart';
import 'package:flutter_prectice/new_counter_bloc/counter_state.dart';

class BlocLogic extends Bloc<CounterEvent, CounterState> {
  BlocLogic() : super(InitialState()) {
    on<IncrementEvent>((event, emit) {
      emit(IncrementState(state.counter + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(DecrementState(state.counter - 1));
    });
  }
}
  