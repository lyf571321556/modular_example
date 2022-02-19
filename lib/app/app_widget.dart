import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_theme.dart';

final appKey = GlobalKey();
final navigatorKey = GlobalKey<NavigatorState>();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: appKey,
      navigatorKey: navigatorKey,
      initialRoute: Modular.initialRoute,
      title: 'Flutter Theme Demo',
      theme: appThemeData(),
    ).modular();
  }
}
