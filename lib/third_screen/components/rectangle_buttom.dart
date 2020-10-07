import 'package:flutter/material.dart';

class RectangleButtom extends StatelessWidget {
 String labelButtom;
 RectangleButtom({this.labelButtom});

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
      child: FlatButton(
        onPressed: (){},
        child: Text('Retry'),
      ),
    );
  }
}
