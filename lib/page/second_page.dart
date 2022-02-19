import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app/app_widget.dart';

class SecondPage extends StatefulWidget {
  final String param;

  SecondPage({required this.param});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(navigatorKey.currentContext!).size;
    debugPrint(Theme.of(navigatorKey.currentContext!).textTheme.bodyText1.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text("第二页"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "屏幕大小参数参数:${size.toString()}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "上一页参数:${widget.param}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextButton(
                  onPressed: () {
                    Modular.to.pushNamed("/third/2000", arguments: "下一页");
                  },
                  child: Text("下一页"))
            ],
          ),
        ));
  }
}
