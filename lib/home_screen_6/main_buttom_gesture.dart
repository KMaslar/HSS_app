import 'package:flutter/material.dart';

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