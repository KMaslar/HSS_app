import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Welcome extends StatefulWidget {
  static const String id='welcome';
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _auth= FirebaseAuth.instance;
  // ignore: deprecated_member_use
  FirebaseUser loggedInUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
  }
  catch(e){
      print(e);
  }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome'),
    );
  }
}

