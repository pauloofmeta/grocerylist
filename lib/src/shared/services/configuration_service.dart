import 'package:grocerylsit/src/shared/services/realm/models/configuration_model.dart';
import 'package:realm/realm.dart';

abstract class ConfigurationService {
  ConfigurationModel getConfiguration();
  void save(String themeModeName, DateTime? syncDate);
  void delete();
}

class ConfigurationServiceImpl implements ConfigurationService {
  final Realm _realm;

  ConfigurationServiceImpl(this._realm);

  @override
  void delete() {
    _realm.deleteAll<ConfigurationModel>();
  }

  @override
  ConfigurationModel getConfiguration() {
    return _realm.all<ConfigurationModel>().first;
  }

  @override
  void save(String themeModeName, DateTime? syncDate) {
    final model = getConfiguration();
    _realm.write(
      () => {
        model.themeModeName = themeModeName,
        model.syncDate = syncDate,
      },
    );
  }
}
