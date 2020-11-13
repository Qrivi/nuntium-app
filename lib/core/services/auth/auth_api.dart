import 'dart:convert' show jsonEncode, jsonDecode;

import 'package:http/http.dart' as http;
import 'package:nuntium/config/constants.dart';
import 'package:nuntium/core/services/entities.dart';
import 'package:nuntium/session.dart';

import 'auth.dart';

class ApiAuthService extends AuthService {
  final _path = "/auth";

  String get path => _path;

  Session _session = Session.instance;

  @override
  Future<Response> register({String email, String password}) async {
    print('[ApiAuthService register] Getting Account from API');
    final response = await http.post(
      '$API_HOST$path/register',
      headers: API_HEADERS,
      body: jsonEncode(
        {
          'email': email,
          'password': password,
          'client': await _session.getClient(),
        },
      ),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      _session.saveTokens(response.headers['Authorization'].substring(8));
      return Account.fromJson(jsonDecode(response.body), status: response.statusCode);
    }
    return Error.fromJson(jsonDecode(response.body), status: response.statusCode);
  }

  @override
  Future<Response> login({String email, String password}) async {
    print('[ApiAuthService login] Getting Account from API');
    final response = await http.post(
      '$API_HOST$path/login',
      headers: API_HEADERS,
      body: jsonEncode(
        {
          'email': email,
          'password': password,
          'client': await _session.getClient(),
        },
      ),
    );

    if (response.statusCode == 200) {
      _session.saveTokens(response.headers['Authorization'].substring(8));
      return Account.fromJson(jsonDecode(response.body));
    }
    return Error.fromJson(jsonDecode(response.body), status: response.statusCode);
  }

  @override
  Future<Response> refresh({String email}) async {
    print('[ApiAuthService refresh] Getting Account from API');
    final response = await http.post(
      '$API_HOST$path/refresh',
      headers: API_HEADERS,
      body: jsonEncode(
        {
          'email': email,
          'token': _session.getRefreshToken(),
        },
      ),
    );

    if (response.statusCode == 200) {
      _session.saveTokens(response.headers['Authorization'].substring(8));
      return Account.fromJson(jsonDecode(response.body));
    }
    return Error.fromJson(jsonDecode(response.body), status: response.statusCode);
  }
}
