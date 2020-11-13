import 'package:nuntium/core/services/entities.dart';

abstract class StorageService {
  Future cacheAccountData(Account account);
  Future<Account> getAccountData();
}
