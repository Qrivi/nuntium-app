import 'package:nuntium/core/services/entities.dart';

abstract class AuthService {
  Future<Response> register();
  Future<Response> login();
  Future<Response> refresh();
}
