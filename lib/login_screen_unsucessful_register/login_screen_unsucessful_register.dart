import 'package:flutter/material.dart';
import '../constants.dart';
import 'rectangle_buttom.dart';

class LoginScreenUnsucessfulRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              ShaderMask(shaderCallback: (rect){
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.lightBlueAccent]).// koga se obiduvam da go napravam gradientot od transparenten do bel, ne se slucuva nisto?
                createShader(Rect.fromLTRB(50, -10, rect.width-50, rect.height-100));},
                blendMode: BlendMode.darken,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/unsucessful1.jpg'),
                      fit: BoxFit.fitHeight,
                      //alignment: FractionalOffset.center,
                    )
                  ),
                ),
              ),
              // Column(
              //   children: [
              //     Expanded(
              //         child: Container(
              //           child: Align(
              //             alignment: FractionalOffset(0.5, 0),
              //             child: Container(
              //               margin: EdgeInsets.only(top:110.0),
              //               decoration: BoxDecoration(
              //                 boxShadow: [
              //                   BoxShadow(color: Colors.blue,
              //                   blurRadius: 20.0,
              //                   spreadRadius: 0.0)
              //                 ]
              //               ),
              //               child: Image.asset('images/unsucessful.jpg'),
              //             ),
              //           ),
              //         ),
              //       flex:1,
              //     ),
              //   ],
              // ),
                Positioned(
                  left: 30.0,
                    top: MediaQuery.of(context).size.height/3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Oops,', style: kLabelTextStyleSecondScreen,),
                        Text('Something went wrong!', style: kButtomTextStyleSecondScreen,)
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 30.0,
                    right: 20.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F2F6),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFD6D6D6),
                            blurRadius: 18.0,
                            spreadRadius: 1.0,
                            offset: Offset(3, 6),
                          )
                        ],),
                      child: FlatButton(
                        onPressed: (){},
                        child: Text('Retry', style: TextStyle(color: Color(0xFF707070), fontSize: 20.0,
                          fontFamily: 'SegoeUI', ),
                        ),
                      ),
                    ),
                  ),
            ],
          ),
          ),
        );

  }
}
