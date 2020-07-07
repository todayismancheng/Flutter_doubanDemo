import 'package:flutter/material.dart';

class LEOGroup extends StatelessWidget {

  static const String routeName = "/group";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小组"),
      ),
      body: Text("第一本小组"),
    );
  }
}
