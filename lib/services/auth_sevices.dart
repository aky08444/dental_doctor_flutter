import 'package:http/http.dart' as http;

import 'dart:convert';

class AuthSevices {
  Future<Map<String, dynamic>> register(dynamic data) async {
    
    final response = await http.post(
      Uri.parse("http://localhost:3000/api/auth/register"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(data),
    );
    Map<String, dynamic> registerMap = await jsonDecode(
      response.body.toString(),
    );

    return registerMap;
  }

  Future<Map<String, dynamic>> login(dynamic logindata) async {
    // print(logindata);
    // print("login request");
    final response = await http.post(
      Uri.parse("http://localhost:3000/api/auth/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(logindata),
    );

    Map<String, dynamic> loginMap = await jsonDecode(response.body.toString());

    return loginMap;
  }

  Future<Map<String , dynamic>> getProfile(String token) async {
    
    final response = await http.get(
      Uri.parse("http://localhost:3000/api/user/profile"),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
    Map<String, dynamic> userMap = jsonDecode(response.body);
  
    return userMap;
  }
}
