import 'package:nuntium/core/services/entities.dart';

import 'auth.dart';

class DummyAuthService extends AuthService {
  final _path = "/auth";

  String get path => _path;

  @override
  Future<Response> register({String email, String password}) async {
    if (password.length > 3) {
      Account account = Account(
        email: email,
        name: 'Ben Dover',
      );
      account.status = 210;
      return account;
    }
    Error error = Error(
      errors: ['Password must be longer'],
    );
    error.status = 400;
    return error;
  }

  @override
  Future<Response> login({String email, String password}) async {
    if (password.length > 3) {
      Account account = Account(
        email: email,
        name: 'Ben Dover',
      );
      account.status = 200;
      return account;
    }
    Error error = Error(
      errors: ['Password must be longer'],
    );
    error.status = 400;
    return error;
  }

  @override
  Future<Response> refresh() {
    throw UnimplementedError();
  }
}
