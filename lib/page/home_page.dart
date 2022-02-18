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
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "主页",
              style: Theme.of(appKey.currentContext!).textTheme.caption,
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
