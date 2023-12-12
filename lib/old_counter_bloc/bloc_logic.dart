import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_prectice/old_counter_bloc/bloc_event.dart';
// import 'package:flutter_prectice/bloc_screen/bloc_state.dart';

class BlocLogic extends Bloc<CounterEvent, int> {
  BlocLogic() : super(0) {
    on<CounterEvent>((event, emit) => {
          if (emit is IncrementEvent)
            {emit(state + 1)}
          else if (emit is DecrementEvent)
            {emit(state - 1)}
        });
  }
}
