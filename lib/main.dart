import 'package:flutter/material.dart';
import 'package:go_moon/pages/home.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget{
 const App({Key? key})  : super(key: key);

  @override
  Widget build(BuildContext){
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1.0),
      ),
      home: Home(),
    );
  }
}