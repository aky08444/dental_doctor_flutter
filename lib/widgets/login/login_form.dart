import 'package:doctor_app/desktop_layout_ui/desktop_layout.dart';
import 'package:doctor_app/desktop_layout_ui/pages/windows_registation_page/windows_registration_page.dart';

import 'package:doctor_app/providers/user_provider.dart';
import 'package:doctor_app/services/auth_sevices.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});
  @override
  State<LoginForm> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  @override
  void initState() {
    super.initState();
    isLogin(); // Runs immediately when the page opens
    
  }

  Future<void> isLogin() async {
    if (context.read<UserProvider>().isLogin == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => DesktopLayout()),
      );
    }
  }

  final authServices = AuthSevices();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future<void> getProfile(Map <String ,dynamic> credential) async {
    // final response = await authServices.login(data);
    await context.read<UserProvider>().logIn(credential);
    isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),

      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0.1,
            left: 1,
            child: Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.1,
            right: 1,
            child: Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(80),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.75,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 3,
                    child: FittedBox(
                      child: Text(
                        "WELCOME BACK!",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: FittedBox(
                      child: Text(
                        "Sign in to your Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey, // Your custom border color
                              width: 2.0, // Your custom border width
                            ),
                          ),
                        ),

                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter your Email",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            // fontSize: 25,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey, // Your custom border color
                              width: 2.0, // Your custom border width
                            ),
                          ),
                        ),

                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your Password",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            // fontSize: 25,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black
                            
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: MouseRegion(
                      cursor : SystemMouseCursors.click,
                      child: Text(
                        "Forgot Your Password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 40,
                        ),
                        child: InkWell(
                          onTap: () {
                            getProfile({
                              "email": emailController.text,
                              "password": passwordController.text,
                            });
                          },
                          child: MouseRegion(
                            cursor : SystemMouseCursors.click,
                            child: Text(
                              "Submit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WindowsRegistrationPage(),
                          ),
                        ),
                      },
                      child: MouseRegion(
                        cursor : SystemMouseCursors.click,
                        child: Text(
                          "Don't have account SignUP",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
