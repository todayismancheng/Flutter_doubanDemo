


import '../group/group.dart';
import '../mall/mall.dart';
import '../profile/profile.dart';
import '../subject/subject.dart';
import '../home/home.dart';
import 'package:flutter/cupertino.dart';
import 'bottom_bar_item.dart';

List<LEOBottomBarItem> tabbarItems = [

  LEOBottomBarItem("home","首页"),
  LEOBottomBarItem("subject","书影音"),
  LEOBottomBarItem("group","小组"),
  LEOBottomBarItem("mall","市集"),
  LEOBottomBarItem("profile","我的"),
];


List<Widget> pages = [

  LEOFirstPage(),
  LEOSubject(),
  LEOGroup(),
  LEOMall(),
  LEOProfile(),

];