import 'package:nuntium/core/models.dart';
import 'package:nuntium/services/storage/storage.dart';

class DummyStorageService implements StorageService {
  @override
  Future cacheAccountData(Account account) {
    return null;
  }

  @override
  Future<Account> getAccountData() async {
    return Account(
      name: 'Ben Dover',
      email: 'ben.d@qrivi.dev',
    );
  }
}
