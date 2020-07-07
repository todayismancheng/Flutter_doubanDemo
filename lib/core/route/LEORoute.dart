
import 'package:douban/pages/profile/profile.dart';
import 'package:douban/pages/subject/search_detail.dart';
import 'package:douban/pages/subject/subject.dart';
import 'package:flutter/material.dart';


import 'package:douban/pages/main/main.dart';

class LEORouter {

  static final String initialRoute = LEOHomepage.routeName;

  static final Map<String, WidgetBuilder> routes = {
    LEOProfile.routeName:(ctx) => LEOProfile(),
    LEOHomepage.routeName:(ctx) => LEOHomepage(),
    LEOSubject.routeName:(ctx) => LEOSubject(),
    LEOSearchDetail.routeName:(ctx) => LEOSearchDetail(),
  };

  // 自己扩展
  static final RouteFactory generateRoute = (settings) {

    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };




}