import 'package:flutter/material.dart';
import 'initialize_items.dart';


class LEOHomepage extends StatefulWidget {
  static const String routeName = "/";

  @override
  _LEOHomepageState createState() => _LEOHomepageState();
}

class _LEOHomepageState extends State<LEOHomepage> {
  int _currentIndexValue = 1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
          index: _currentIndexValue,
          children:pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: tabbarItems,
        currentIndex: _currentIndexValue,
        type:BottomNavigationBarType.fixed ,
        onTap:(value){
          setState(() {
            _currentIndexValue = value;
          });
        },
      ),
    );
  }
}
/*

* */