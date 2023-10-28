import 'package:flutter/material.dart';

class MyClassData with ChangeNotifier{
int _counter =0;
int get counter => _counter;

increment(){
  _counter++;
  notifyListeners();
}

}

//provider
//data model 
//Provider.of<DataMOdel>(context)
//main.dart