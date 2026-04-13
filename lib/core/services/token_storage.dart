import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final storage = FlutterSecureStorage();

  Future<String?> getAccessToken() async {
    return storage.read(key: 'accessToken');
  }

  Future<String?> getRefreshToken() async {
    return storage.read(key: 'refreshToken');
  }

  Future<void> saveUserId(String userId) async {
    await storage.write(key: 'userId', value: userId.toString());
  }

  Future<String?> getUserId() async {
    return storage.read(key: 'userId');
  }

  Future<void> safeTokens(String access, String refresh) async {
    await storage.write(key: 'accessToken', value: access);
    await storage.write(key: 'refreshToken', value: refresh);
  }

  Future<void> clear() async {
    await storage.deleteAll();
  }
}
