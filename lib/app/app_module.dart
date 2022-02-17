import 'package:flutter_modular/flutter_modular.dart';

import '../page/forth_page.dart';
import '../page/home_page.dart';
import '../page/second_page.dart';
import '../page/third_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => HomePage()),
    ChildRoute('/second', child: (_, args) => SecondPage(param: args.data)),
    ChildRoute('/third/:param',
        child: (_, args) => ThirdPage(param: args.params['param'])),
    ChildRoute('/fourth',
        child: (_, args) => FourthPage(param: args.queryParams['param'] ?? "")),
  ];
}
