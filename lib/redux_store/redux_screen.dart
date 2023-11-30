import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_first_project/redux_store/Store.dart';
import 'package:my_first_project/redux_store/action.dart';
import 'package:my_first_project/redux_store/app.dart';
import 'package:redux/redux.dart';

class ReduxScreen extends StatelessWidget {
  const ReduxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Redux Store..."),
      ),
      body: Center(
        child: Column(
          children: [
            StoreConnector<AppState, int>(
                builder: (context, counter) {
                  return Center(
                      child: Column(
                    children: [
                      Text(counter.toString()),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                child: Text("+"),
                                onPressed: () {
                                  store.dispatch(IncrementCount());
                                }),
                            ElevatedButton(
                                child: Text("-"),
                                onPressed: () {
                                  store.dispatch(DecrementCount());
                                })
                          ],
                        ),
                      )
                    ],
                  ));
                },
                converter: (store) => store.state.counter),
            StoreConnector<AppState, dynamic>(
                builder: (context, userName) {
                  return Column(
                    children: [
                      Text(userName.toString()),
                      ElevatedButton(
                          child: Text("Update Text"),
                          onPressed: () {
                            store.dispatch(ShowUserName("Radhika Verma"));
                          })
                    ],
                  );
                },
                converter: (store) => store.state.userName)
          ],
        ),
      ),
    );
  }
}
