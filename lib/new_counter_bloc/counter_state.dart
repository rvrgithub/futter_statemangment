import 'package:flutter/material.dart';

abstract class CounterState {
  int counter = 0;
  CounterState({required this.counter});
}
class InitialState extends CounterState {
  InitialState() : super(counter: 0);
}

class IncrementState extends CounterState {
  IncrementState(int incCounter) : super(counter: incCounter);
}

class DecrementState extends CounterState {
  DecrementState(int decCounter) : super(counter: decCounter);
}
