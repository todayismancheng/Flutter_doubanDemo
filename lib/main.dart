
import 'package:douban/pages/others/app_theme.dart';
import 'package:douban/pages/others/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/others/app_theme.dart';
import 'package:douban/core/route/LEORoute.dart';

void main() {
  runApp( MyApp()

  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    LEOSizeFit.initialize();

    return MaterialApp(
      title: 'com.douya',
      theme: LEOAppTheme.norTheme,
      // 路由
      initialRoute:LEORouter.initialRoute,
      routes: LEORouter.routes,
      onGenerateRoute: LEORouter.generateRoute,
      onUnknownRoute: LEORouter.unknownRoute,
    );
  }
}
