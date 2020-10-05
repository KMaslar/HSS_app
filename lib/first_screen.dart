import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar:AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xFFF1F2F6),
                child: IconButton(
                  icon: Icon(Icons.perm_identity), onPressed: () {},
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
            extendBodyBehindAppBar: true,
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
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover),
              ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 15.0, 85.0, 15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F2F6),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                         color: Color(0xFFD6D6D6),
                          blurRadius: 18.0,
                          spreadRadius: 5.0,
                          offset: Offset(6, 6),
                        )
                      ],),

                    child: FlatButton.icon(onPressed: (){},
                      icon: Icon(Icons.update, color: Color(0xFF1C7ED4), size: 35.0,),
                        label: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ Text('Reminders', style: TextStyle(color: Color(0xFF707070), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'SegoeUI')),
                            Text('Have you taken your pills', style: TextStyle(color: Color(0xFF1C7ED4), fontFamily: 'SegoeUI', fontSize: 12.0))],
                        ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: MainButtomGesture(
                        onPressed: (){},
                        imageIcon: AssetImage('icons/video.png'),
                        iconText: 'Video',)),
                      Expanded(child: MainButtomGesture(
                        onPressed: (){},
                        imageIcon: AssetImage('icons/booking.png'),
                        iconText: 'Booking',)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: MainButtomGesture(
                        onPressed: (){},
                        imageIcon: AssetImage('icons/SOS.png'),
                        iconText: 'Emergency SOS',)),
                       Expanded(child: MainButtomGesture(
                         onPressed: (){},
                         imageIcon: AssetImage('icons/sensor.png'),
                         iconText: 'Health Sensor',)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ),
    );
  }
}

class MainButtomGesture extends StatelessWidget {
  AssetImage imageIcon;
  final String iconText;
  Function onPressed;

  MainButtomGesture ({this.imageIcon, this.iconText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onPressed,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(35.0),
              decoration: BoxDecoration(
                color: Color(0xFFF1F2F6),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFD6D6D6),
                      blurRadius: 18.0,
                      spreadRadius: 5.0,
                      offset: Offset(6, 6),
                    )
                  ],),
                child: Image(image: imageIcon),
              ),
                SizedBox(height: 15.0,),
                Text(iconText,
                  style: TextStyle(fontFamily: 'SegoeUI', color: Color(0xFF707070), fontSize: 15.0 ),
                ),
          ],
        ),
    );
  }
}
