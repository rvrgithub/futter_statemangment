abstract class CounterState {}

class CounterIncState extends CounterState {}

class CounterDecState extends CounterState {}

class CounterInitialState extends CounterState {
  final int counter;
  CounterInitialState({required this.counter});
}
