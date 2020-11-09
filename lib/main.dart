import 'package:flutter/material.dart';
import 'home_screen_hamburger_menu_active.dart';
import 'first_screen/components/home_screen_6.dart';
import 'login_screen_unsucessful_register/login_screen_unsucessful_register.dart';
import 'login_screen.dart';

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
        '/slider': (context) => HomeScreenHamburgerMenuActive(),
      },
    );
  }
}





