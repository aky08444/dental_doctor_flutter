import 'package:doctor_app/android_layout_ui/pages/accountPage/android_account_page.dart';
import 'package:doctor_app/providers/user_provider.dart';
import 'package:doctor_app/services/token_services.dart';
import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_admin_android.dart';
import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_user_android.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_user_windows.dart';
import 'package:doctor_app/android_layout_ui/pages/android_about_page/android_about_page.dart';
import 'package:doctor_app/android_layout_ui/pages/bookingsection/bookingPage_android.dart';
import 'package:doctor_app/android_layout_ui/pages/herosection/heroSection%20_android.dart';
import 'package:doctor_app/widgets/bottomNavigationBar/bottomNavigationBar.dart';
import 'package:provider/provider.dart';

class AndroidLayout extends StatefulWidget {
  const AndroidLayout({super.key});

  @override
  State<AndroidLayout> createState() => _AndroidLaoutState();
}

class _AndroidLaoutState extends State<AndroidLayout> {
  final tokenService = TokenServices();
  String filed = "MyAppointments";
   
  // @override
  // void initState() {
  //   super.initState();
  //   context
  //       .read<UserProvider>()
  //       .restoreSession(); 
  //       option();
  //   // isLogin();
  // }
  //  void option() {
  //   if (context.read<UserProvider>().isLogin == true ) {
  //     filed = "Profie";
  //   }
  // }

  

  int selectedIndex = 0;
  List<dynamic> pages = [
    HerosectionAndroid(),
    BookingpageAndroid(),
    AppointmentsListUserAndroid(),
    AppointmentsListAdminAndroid(),
    AndroidAboutPage(),
    AndroidAccountPage(),
  ];

  List<String> titles = ["Dashboard", "Appointments", "Admin", "About"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[selectedIndex],
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: ColoredBox(
                color: Colors.white,
                child: pages[selectedIndex],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Bottomnavigationbar(
        screenIndex: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
