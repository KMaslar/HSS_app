import 'package:flutter/material.dart';
import '../constants.dart';
import 'main_buttom_gesture.dart';
import 'rectangle_main_buttom.dart';

class HomeScreen6 extends StatefulWidget {
  @override
  _HomeScreen6State createState() => _HomeScreen6State();
}

class _HomeScreen6State extends State<HomeScreen6> {
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
                  RectangleMainButtom(buttomIcon: Icons.update,largeLabel: 'Reminder', smallLabel: 'Have you take your pills',),
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



