import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class LocalDataSource {
  static final LocalDataSource _singleton = LocalDataSource._();

  static LocalDataSource get instance => _singleton;

  Completer<Database> _completer;

  LocalDataSource._();

  Future<Database> get connection async {
    try {
      if (_completer == null) {
        _completer = Completer();
        _openConnection();
      }
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
    }
    return _completer.future;
  }

  void _openConnection() async {
    final deviceDir = await getApplicationDocumentsDirectory();
    final databaseFilePath = join(deviceDir.path, 'cfnews.db');
    final connection = await databaseFactoryIo.openDatabase(databaseFilePath);
    _completer.complete(connection);
  }
}
