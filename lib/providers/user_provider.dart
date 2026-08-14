import 'package:doctor_app/services/token_services.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/services/auth_sevices.dart';

class UserProvider extends ChangeNotifier {
  final authServices = AuthSevices();
  final tokenServices = TokenServices();
  Map<String , dynamic> user = {
  };
   
  bool isLogin = false;
  bool isAdmin = false;
  
  //Checks for a save token and restores the user's profile as app starts.
  Future<void> restoreSession() async {
    
    try {
      //Retrieve the token from local storage.
    final token = await tokenServices.getToken();
    if (token == null) {
      print("No token found");
      return;
    }
    //fetch the user's profile
    final profileResponse = await authServices.getProfile(token);

    if (profileResponse['success'] == true) {
      
      print(profileResponse);
      user =  profileResponse['user'];
      // print(user['role']);
      
      if (profileResponse['user']['role'] == "admin") {
        isAdmin = true;
      }
      isLogin = true;
      notifyListeners();
    } else {
      print("token is null");
    }
    }
    catch (e) {
      print('failed to fetch user profile $e');
    }
  }

  // Authenticates the user, saves the access token, and loads the user's profile.
  Future<void> logIn(Map <String ,dynamic> credential) async {
    
    try{
      // Authenticates the user with the provided credentials.
    final loginResponse = await authServices.login(credential);
    
    if (loginResponse['success'] == true) {
      
      // Persist the authentication token for future app launches.
       tokenServices.saveToken(loginResponse['token']);
      // Retrieve the authenticated user's profile.
      final profileResponse = await authServices.getProfile(loginResponse['token']);
      
      if (profileResponse["success"] == true) {
        isLogin = true;
        user = loginResponse["user"];
        print(user);
      }
      notifyListeners();
    }
    }
    catch(e) {
      print(e);
    }
  }
}
