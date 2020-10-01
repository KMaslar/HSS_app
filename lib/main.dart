import 'dart:ui';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'second_screen.dart';

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
         '/': (context)  => HomePage(),
        '/slider': (context) => SecondScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xFFF1F2F6),
          child: IconButton(icon: Icon(Icons.perm_identity), onPressed:(){},
          color: Color(0xFF1C7ED4),
          iconSize: 30,)
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Welcome', style: kLabelAppBarFirstScreen,),
            Text('Damjan', style: kLabelAppBarFirstScreen,),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Contact'),
              trailing: Icon(Icons.mail),
            )
          ],
        ),
      ),
      body: Center(
        child: RaisedButton(onPressed: () {Navigator.pushNamed(context, '/slider');},
            child: Text("press me" ),
      ),
    )

    );
  }




