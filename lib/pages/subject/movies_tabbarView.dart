
import 'package:flutter/material.dart';
import 'movie_page.dart';

class LEOTabbarView extends StatelessWidget {
  final TabController _tabController;

  LEOTabbarView(@required this._tabController);

  final List<Widget> tabViews= [
    LEOMoviePage(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
    Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        children: tabViews,
        controller: _tabController,
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build Page1');

    return Center(
      child: Text('Page1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build Page2');
    return Center(
      child: Text('Page2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build Page3');
    return Center(
      child: Text('Page3'),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build Page4');
    return Center(
      child: Text('Page4'),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build Page5');
    return Center(
      child: Text('Page5'),
    );
  }
}
