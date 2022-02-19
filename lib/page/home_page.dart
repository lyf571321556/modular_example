import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app/app_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // debugPrint(Theme.of(context).textTheme.subtitle2.toString());
    final size = MediaQuery.of(navigatorKey.currentContext!).size;
    debugPrint(Theme.of(navigatorKey.currentContext!).textTheme.subtitle2.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "屏幕大小参数参数:${size.toString()}",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "主页",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            TextButton(
                onPressed: () {
                  Modular.to.pushNamed("/second", arguments: "1000");
                },
                child: Text("点击"))
          ],
        ),
      ),
    );
  }
}
