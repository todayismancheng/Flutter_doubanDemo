
import '../home/homeContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LEOFirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("豆瓣首页"),
      ),
      body: LEOHomeContent(),

    );
  }
}

