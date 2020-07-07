import 'package:flutter/material.dart';

class LEOProfileListMenuItem extends StatelessWidget {

  final String menuItemString;
  final String menuItemImage;
  LEOProfileListMenuItem(
      this.menuItemString,
      {
        this.menuItemImage,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      height: 44.0,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 8),
              child:Image.asset("assets/images/profile/$menuItemImage",
                width: 25,
                height: 25,
              )
          ),
          Expanded(child: Text(menuItemString,style: TextStyle(fontSize: 17.0),)),
          Icon(Icons.chevron_right,color: Colors.black12,) ,
        ],
      ),
    );
  }
}
