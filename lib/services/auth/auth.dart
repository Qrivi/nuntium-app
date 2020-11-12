import 'package:nuntium/core/models.dart';

abstract class AuthService {
  Future<Response> register();
  Future<Response> login();
  Future<Response> refresh();
}