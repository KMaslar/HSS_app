import 'package:flutter/material.dart';


class RectangleMainButtom extends StatelessWidget {
  IconData buttomIcon;
final String largeLabel;
final String smallLabel;

RectangleMainButtom({this.buttomIcon, this.largeLabel, this.smallLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        icon: Icon(buttomIcon, color: Color(0xFF1C7ED4), size: 35.0,),
        label: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Text(largeLabel, style: TextStyle(color: Color(0xFF707070), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'SegoeUI')),
            Text(smallLabel, style: TextStyle(color: Color(0xFF1C7ED4), fontFamily: 'SegoeUI', fontSize: 12.0))],
        ),
      ),
    );
  }
}