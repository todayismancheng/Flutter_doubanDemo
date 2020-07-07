import 'package:flutter/material.dart';

class LEOCustomTabBar extends StatefulWidget {

  final Color selectColor, unselectedColor;
  final TextStyle selectStyle, unselectedStyle;
  final List tabs;
  final TabController tabController;
  final bool isScrollable;
  final double vertical;
  LEOCustomTabBar({this.selectColor,
    this.unselectedColor,
    this.selectStyle,
    this.unselectedStyle,
    this.tabs,
    this.tabController,
    this.isScrollable = true,
    this.vertical = 0.0,
  });

  @override
  _LEOCustomTabBarState createState() => _LEOCustomTabBarState();
}

class _LEOCustomTabBarState extends State<LEOCustomTabBar> {


  List<Widget> tabWidgets;

  @override
  void initState() {
    super.initState();
    tabWidgets = widget.tabs.map((item) => Text(item, style: TextStyle(fontSize: 15),)).toList();
  }
  @override
  void dispose() {
    super.dispose();
    if (widget.tabController != null) {
      widget.tabController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    //Tab小部件列表
//    List<Widget>  @required this.tabs,
    //组件选中以及动画的状态
//   TabController this.controller,
    //Tab是否可滑动(false->整个tab会把宽度填满，true-> tab包裹)
//  bool  this.isScrollable = false,
    //选项卡下方的导航条的颜色
//   Color this.indicatorColor,
    //选项卡下方的导航条的线条粗细
//   double this.indicatorWeight = 2.0,
//  EdgeInsetsGeometry  this.indicatorPadding = EdgeInsets.zero,
//   Decoration this.indicator,
//   TabBarIndicatorSize this.indicatorSize,导航条的长度，（tab：默认等分；label：跟标签长度一致）
//  Color  this.labelColor,所选标签标签的颜色
//  TextStyle  this.labelStyle,所选标签标签的文本样式
//  EdgeInsetsGeometry  this.labelPadding,,所选标签标签的内边距
// Color   this.unselectedLabelColor,未选定标签标签的颜色
//  TextStyle  this.unselectedLabelStyle,未选中标签标签的文字样式
//   void Function(T value) this.onTap,按下时的响应事件

    return Container(
      margin: EdgeInsets.symmetric(vertical: widget.vertical),
      child: TabBar(
        tabs: tabWidgets,
        isScrollable: widget.isScrollable,
        indicatorColor: widget.selectColor,
        labelColor: widget.selectColor,
        labelStyle: widget.selectStyle,
        unselectedLabelColor: widget.unselectedColor,
        unselectedLabelStyle: widget.unselectedStyle,
        indicatorSize: TabBarIndicatorSize.label,
        controller: widget.tabController,
      ),
    );
  }
}
