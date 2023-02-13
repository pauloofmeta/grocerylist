import 'package:flutter_modular/flutter_modular.dart';
import 'package:grocerylsit/src/configuration/configuration_module.dart';
import 'package:grocerylsit/src/home/home_module.dart';
import 'package:grocerylsit/src/shared/services/configuration_service.dart';
import 'package:grocerylsit/src/shared/services/realm/realm_config.dart';
import 'package:grocerylsit/src/shared/stores/app_store.dart';
import 'package:realm/realm.dart';

class AppModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind.instance<Realm>(Realm(config)),
    Bind.factory<ConfigurationService>(
      (i) => ConfigurationServiceImpl(i.get()),
    ),
    Bind.singleton((i) => AppStore(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/config', module: ConfigurationModule()),
  ];
}
