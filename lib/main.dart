import 'package:flutter/material.dart';
import 'package:tp1_dwm_flutter_app/pages/counter.page.dart';
import 'package:tp1_dwm_flutter_app/pages/home.page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context)=> HomePage(),
        "/counter": (context)=> CounterPage(),
      },
      theme: new ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight(600),
            fontSize: 23,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 0, 0, 0)),
          bodyMedium: TextStyle(fontSize: 5)
        ),
        primaryColor: Colors.teal,
      ),
    );
  }
}
