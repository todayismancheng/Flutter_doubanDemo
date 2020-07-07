import 'package:flutter/material.dart';

class LEOTodayPlayMovie extends StatefulWidget {
  @override
  _LEOTodayPlayMovieState createState() => _LEOTodayPlayMovieState();
}

class _LEOTodayPlayMovieState extends State<LEOTodayPlayMovie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: <Widget>[
          Container(
            height: 120.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color:Color.fromARGB(255, 47, 22, 74),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
          ),
          Container(

            child: Text("无花果"),
          ),
          Container(
            child: Text("无花果"),
          ),
        ],
      ),
    );
  }
}
