import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_project/bloc_state/bloc_events.dart';
import 'package:my_first_project/bloc_state/bloc_logic.dart';
import 'package:my_first_project/bloc_state/bloc_state.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (create)=>BlocLogic(),
    child: Scaffold(
      appBar: AppBar(
        title: Text("bloc Screen"),
      ),
      body: BlocBuilder<BlocLogic,ConnectivityState>(builder: ((context, state) {
        if(state is ConnectionEstablisht){
          return Text("Connected");
        }else if(state is ConnectivityLost){
return Text("disconnected..");
        }else{
          return Text("Loading.... . . . .  .     !!");
        }
      }))
    )
    );
  }
}
