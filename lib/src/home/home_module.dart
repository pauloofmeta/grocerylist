import 'package:flutter_modular/flutter_modular.dart';
import 'package:grocerylsit/src/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomePage())
  ];
}
