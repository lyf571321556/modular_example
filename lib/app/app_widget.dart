import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: alice.getNavigatorKey(),
      initialRoute: Modular.initialRoute,
      title: 'Flutter Slidy',
      theme: ThemeData(primaryColor: Colors.blue, platform: TargetPlatform.iOS),//android手势关闭页面，需要配置platform: TargetPlatform.iOS开启优化关闭页面
    ).modular();
  }
}
