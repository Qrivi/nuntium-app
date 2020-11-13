import 'package:get_it/get_it.dart';
import 'package:nuntium/core/services/auth/auth.dart';
import 'package:nuntium/core/services/auth/auth_api.dart';
import 'package:nuntium/core/services/auth/auth_dummy.dart';
import 'package:nuntium/core/services/storage/storage.dart';
import 'package:nuntium/core/services/storage/storage_dummy.dart';
import 'package:nuntium/core/services/storage/storage_persistent.dart';

GetIt serviceLocator = GetIt.asNewInstance();

void setupServiceLocator() {
  // serviceLocator.registerFactory<ChooseFavoritesViewModel>(() => ChooseFavoritesViewModel());

  if (String.fromEnvironment('DUMMY') == 'TRUE') {
    serviceLocator.registerLazySingleton<StorageService>(() => DummyStorageService());
    serviceLocator.registerLazySingleton<AuthService>(() => DummyAuthService());
  } else {
    serviceLocator.registerLazySingleton<StorageService>(() => PersistentStorageService());
    serviceLocator.registerLazySingleton<AuthService>(() => ApiAuthService());
  }
}
