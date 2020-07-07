


import 'package:flutter/material.dart';

import 'package:douban/core/delegate/CustomSliverPersistentHeader_Delegate.dart';
import '../subject/movies_tabbarView.dart';
import '../subject/search_detail.dart';
import '../widget/search_textField.dart';
import 'package:douban/core/delegate/custom_tabbar.dart';
import '../extension/int_extension.dart';


class LEOSubject extends StatefulWidget {
  static const String routeName = "/subject";

  @override
  _LEOSubjectState createState() => _LEOSubjectState();
}
TabController _tabController;
class _LEOSubjectState extends State<LEOSubject> with SingleTickerProviderStateMixin{

  final List<String> tabs = ['电影', '电视', '综艺', '读书', '音乐', '同城'];
  var tabbar;
  void initState() {
    super.initState();
    tabbar = LEOCustomTabBar(
      tabs: tabs,
      tabController: _tabController,
      unselectedColor: Color.fromARGB(255, 117, 117, 117),
      unselectedStyle: TextStyle(fontSize: 18, color: Colors.black),
      selectStyle: TextStyle(fontSize: 18, color:  Colors.black),
      selectColor: Colors.black,
      vertical: 10.px
    );
        //TitlePageTabBar();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: DefaultTabController(
              length: tabs.length,
              child: _getNestedScrollView(tabbar)
          )
      ),
    );
  }



}
Widget _getNestedScrollView(Widget tabBar){

  return  NestedScrollView(
    headerSliverBuilder: (ctx,innerBoxIsScrolled){

      return <Widget>[
        SliverToBoxAdapter(
          child: Container(
            child: LEOSearchTextField(
              onTab: (){
                Navigator.of(ctx).pushNamed(LEOSearchDetail.routeName);
              },
            ),
          ),
        ),

        SliverPersistentHeader(
          floating: true,
            pinned: true,
            delegate: CustomSliverPersistentHeaderDelegate(
              maxHeight: 49.0,
              minHeight: 49.0,
              child: Container(
                color: Colors.white,
                child: tabBar,
              ),
            )
        ),
      ];
    },
    body: LEOTabbarView(_tabController),
  );
}
