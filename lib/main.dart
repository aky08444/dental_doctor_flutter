import 'package:doctor_app/providers/appointments_provider.dart';
import 'package:doctor_app/providers/user_provider.dart';
import 'package:doctor_app/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(providers: [
      ChangeNotifierProvider(
      create: (context) => UserProvider(),
       ),
       ChangeNotifierProvider(
      create: (context) => AppointmentsProvider(),
       )
     ],
     child: MyApp()
     )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "Doctor app",

        // theme: ThemeData(
        //   scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // ),
        theme: ThemeData(
          fontFamily: 'Poppins',
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.grey, // Primary basis

            primary: const Color(0xFF1565C0), // Strict primary choice
            secondary: const Color(0xFFF57F17), // Strict secondary choice
            tertiary: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        home: ResponsiveLayout(),
      
    );
  }
}
