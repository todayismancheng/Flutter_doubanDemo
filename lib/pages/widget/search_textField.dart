
import 'package:flutter/material.dart';
import '../extension/int_extension.dart';

class LEOSearchTextField extends StatelessWidget {

  final ValueChanged<String> onSubmitted;
  final VoidCallback onTab;
  final hitText;

  LEOSearchTextField({
    this.hitText = "用一部电影形容你的2018",
    this.onTab,
    this.onSubmitted
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 237, 236, 237),
        borderRadius: BorderRadius.circular(18.5),
      ),
      child: TextField(
        onSubmitted: onSubmitted,
        onTap: onTab,
        cursorColor: Color.fromARGB(255, 0, 189, 96),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5.px),
          hintText: hitText,
              border: InputBorder.none,
              prefixIcon: Icon(
          Icons.search,
          size: 25 ,
          color: Color.fromARGB(255, 128, 128, 128),
        )
        ),
        style: TextStyle(fontSize: 17,textBaseline: TextBaseline.alphabetic),
      ),
    );
  }
}
