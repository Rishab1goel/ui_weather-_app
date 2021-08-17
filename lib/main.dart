import 'package:flutter/material.dart';
import 'homescreen.dart';

void main(){

  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.red,
      ),
      home:HomePage(),
    );
  }
}


