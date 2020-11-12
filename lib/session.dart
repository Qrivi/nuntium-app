import 'dart:io' show Platform;

import 'package:device_info/device_info.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ios_utsname_ext/extension.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:package_info/package_info.dart';

class Session {
  static const authTokenKey = 'authToken';
  static const refreshTokenKey = 'refreshToken';

  static final Session _instance = Session._singleton();

  static Session get instance => _instance;

  final _vault = FlutterSecureStorage();

  String _authToken, _refreshToken, _client;

  Session._singleton();

  void saveTokens(String jwt) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt);

    _vault.write(key: authTokenKey, value: jwt);
    _authToken = jwt;

    _vault.write(key: refreshTokenKey, value: decodedToken['refresh_token']);
    _refreshToken = decodedToken['refresh_token'];
  }

  Future<String> getAuthToken() async {
    if (_authToken == null) _authToken = await _vault.read(key: authTokenKey);
    return _authToken;
  }

  void clearAuthToken() {
    _vault.delete(key: authTokenKey);
  }

  Future<String> getRefreshToken() async {
    if (_refreshToken == null) _refreshToken = await _vault.read(key: refreshTokenKey);
    return _refreshToken;
  }

  void clearRefreshToken() {
    _vault.delete(key: refreshTokenKey);
  }

  Future<String> getClient() async {
    if (_client == null) {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      String device = 'an unknown device';

      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        device = '${androidInfo.manufacturer} ${androidInfo.model}';
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
        device = 'Apple ${iosInfo.utsname.machine.iOSProductName}';
      }
      _client = '${packageInfo.appName} ${packageInfo.version} on $device';
    }
    return _client;
  }
}
