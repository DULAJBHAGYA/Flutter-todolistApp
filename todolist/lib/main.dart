import 'package:flutter/material.dart';
import 'package:todolist/frontend/home.dart';
import 'package:todolist/frontend/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/home': (context) => Home(),
        // '/menu': (context) => Menu(),
        // '/calender': (context) => CalendarApp(),
      },
    );
  }
}
