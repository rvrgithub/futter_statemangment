import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_prectice/new_counter_bloc/counter_event.dart';
import 'package:flutter_prectice/new_counter_bloc/counter_logic.dart';
import 'package:flutter_prectice/new_counter_bloc/counter_state.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocLogic(),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Bloc Screen..."),
          ),
          body:
              BlocBuilder<BlocLogic, CounterState>(builder: ((context, state) {
            return Center(
                child: Column(children: [
              Text(state.counter.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<BlocLogic>().add(IncrementEvent());
                      },
                      child: Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: () {
                        context.read<BlocLogic>().add(DecrementEvent());
                      },
                      child: Icon(Icons.remove)),
                ],
              )
            ]));
          }))),
    );
  }
}
