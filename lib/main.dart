import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'first_screen/components/first_screen.dart';
import 'third_screen/components/third_screen.dart';

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
         '/': (context)  => ThirdScreen(),
        '/slider': (context) => SecondScreen(),
      },
    );
  }
}





