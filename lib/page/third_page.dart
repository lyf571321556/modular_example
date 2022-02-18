import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ThirdPage extends StatefulWidget {
  final String param;

  ThirdPage({required this.param});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ThirdPageState();
  }
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("第三页"),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("上一页参数:${widget.param}"),
                TextButton(
                    onPressed: () {
                      Modular.to.pushNamed("/fourth?param=3000");
                    },
                    child: const Text("下一页"))
              ],
            )));
  }
}
