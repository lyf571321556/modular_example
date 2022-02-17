import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: Text("第四页"),
        ),
        body: Column(
          children: [
            Text("上一页参数:${widget.param}"),
            TextButton(onPressed: () {}, child: Text("下一页"))
          ],
        ));
  }
}
