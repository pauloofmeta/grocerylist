import 'package:flutter_modular/flutter_modular.dart';
import 'package:grocerylsit/src/configuration/configuration_page.dart';

class ConfigurationModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const ConfigurationPage()),
  ];
}
