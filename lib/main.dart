import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
         '/': (context)  => FirstScreen(),
        '/slider': (context) => SecondScreen(),
      },
    );
  }
}





