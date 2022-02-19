import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app/app_widget.dart';

class FourthPage extends StatefulWidget {
  final String param;

  FourthPage({required this.param});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FourthPageState();
  }
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(navigatorKey.currentContext!).size;
    debugPrint(Theme.of(navigatorKey.currentContext!).textTheme.caption.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text("第四页"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "屏幕大小参数参数:${size.toString()}",
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                "上一页参数:${widget.param}",
                style: Theme.of(context).textTheme.caption,
              ),
              TextButton(onPressed: () {}, child: Text("下一页"))
            ],
          ),
        ));
  }
}
