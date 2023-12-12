import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_prectice/old_counter_bloc/bloc_event.dart';
import 'package:flutter_prectice/old_counter_bloc/bloc_logic.dart';
import 'package:flutter_prectice/old_counter_bloc/bloc_state.dart';

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
          body: BlocBuilder<BlocLogic, int>(builder: ((context, state) {
            return Center(
                child: Column(children: [
              Text("Counter, $state"),
              Row(
                 mainAxisAlignment:MainAxisAlignment.spaceAround ,

                children: [
                  ElevatedButton(

                      onPressed: () {
                        // BlocProvider.of<BlocLogic>(context).add(IncrementEvent());
                      },
                      child: Icon(Icons.add)),
                  ElevatedButton(
                      onPressed: () {
                        context.watch<BlocLogic>().add(IncrementEvent());
                      },
                      child: Icon(Icons.remove)),
                ],
              )
            ]));
          }))),
    );
  }
}
