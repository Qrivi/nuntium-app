import 'package:nuntium/core/models.dart';

abstract class StorageService {
  Future cacheAccountData(Account account);
  Future<Account> getAccountData();
}