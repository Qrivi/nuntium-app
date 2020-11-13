import 'dart:convert' show jsonEncode, jsonDecode;

import 'package:nuntium/core/services/entities.dart';
import 'package:nuntium/core/services/storage/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersistentStorageService implements StorageService {
  static const sharedPrefsAccountKey = 'account';

  @override
  Future<void> cacheAccountData(Account account) {
    _write(sharedPrefsAccountKey, jsonEncode(account));
    return null;
  }

  @override
  Future<Account> getAccountData() async {
    String data = await _read(sharedPrefsAccountKey);
    return Account.fromJson(jsonDecode(data));
  }

  Future<void> _write(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  Future<String> _read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return Future<String>.value(prefs.getString(key) ?? '');
  }
}
