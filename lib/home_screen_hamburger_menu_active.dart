import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:ui';

class HomeScreenHamburgerMenuActive extends StatefulWidget {
  @override
  _HomeScreenHamburgerMenuActiveState createState() => _HomeScreenHamburgerMenuActiveState();
}

class _HomeScreenHamburgerMenuActiveState extends State<HomeScreenHamburgerMenuActive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(// container za pozadinata
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter:ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: Colors.blue.withOpacity(0.2),
              ),
            ),
          ),
          ClipRect(
            child: Stack(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text( 'HSS',
                      style: kLabelTextStyleSecondScreen ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: (){
                          print('menu bar is cliked');
                        },
                        child: Ink(
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Color(0x1FF57BBEB),),
                          child: IconButton(
                            icon: Icon(Icons.menu),
                          ),
                        ),
                      ),
                    ),],
                ),
                BackdropFilter(// ovoj filter se odnesuva samo na appbar
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    color: Colors.blue.withOpacity(0.5),
                  ),
                ),
                DraggableScrollableSheet(// widget za sliderot so dolno meni
                  initialChildSize: 0.4,
                  minChildSize: 0.1,
                  maxChildSize: 0.8,
                  builder: (BuildContext context, ScrollController scrollController )
                  {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F6),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                          ),
                        ),

                        child: GridView.builder(
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                            controller: scrollController,
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index){
                              return Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Divider(
                                      color: Color(0xFF1C7ED4),
                                      indent: 120.0,
                                      endIndent: 120.0,
                                      thickness: 5.0,
                                    ),
                                    ButtomIcon(
                                      iconType: Icons.add_box,
                                      iconText: 'History Results',),
                                    ButtomIcon(
                                      iconType: Icons.settings,
                                      iconText: 'Settings',),
                                    ButtomIcon(
                                      iconType: Icons.star_border,
                                      iconText: 'Membership',),
                                    ButtomIcon(
                                      iconType: Icons.autorenew,
                                      iconText: 'Transactions',),
                                  ],
                                ),
                              );
                            }),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ButtomIcon extends StatelessWidget {

  IconData iconType;
  final String iconText;

  ButtomIcon({this.iconType, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        disabledColor: Color(0xFFF1F4F6),
        //disabledColor: Color(0xFFF1F2F6),
        //hoverColor: Color(0xFF1C7ED4),
        onPressed: (){print('the buttom is clicked');},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Color(0xFFF1F4F6),),
        ),
        elevation: 6.0,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(iconType, color: Color(0xFF1C7ED4),),
            SizedBox(width: 15.0,),
            Text(iconText, style: kButtomTextStyleSecondScreen),
          ],
        ),
      ),
    );
  }
}