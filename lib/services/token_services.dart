import 'package:doctor_app/services/auth_sevices.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenServices {
  final authServices = AuthSevices();
  final storage = FlutterSecureStorage();
  void saveToken(String token) async {
    try {
      await storage.write(key: "token", value: token);
    } catch (error) {
      print(error);
    }
  }

  Future<String?> getToken() async {
    String? token;
    try {
      token = await storage.read(key: "token");
      return token;
    } catch (error) {

      print(error);
    }
  }

  Future<void> deleteToken() async {
    try {
      await storage.delete(key: "token");
    } catch (e) {
      print(e);
    }
  }
}
