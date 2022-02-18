import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: Text("第二页"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("上一页参数:${widget.param}"),
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
