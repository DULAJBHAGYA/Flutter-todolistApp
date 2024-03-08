import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todolist/frontend/home.dart';
import 'package:todolist/frontend/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
