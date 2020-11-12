import 'package:riverpod/all.dart';

// just trying stuff -- not used yet

class AccountState {
  final String uuid,email,name;
  final String authenticationToken, refreshToken;

  AccountState({this.uuid, this.email, this.name, this.authenticationToken, this.refreshToken});
}

class AccountStateNotifier extends StateNotifier<AccountState>{
  AccountStateNotifier(AccountState accountState) : super(accountState ?? AccountState());
}
