import "package:doctor_app/desktop_layout_ui/pages/windows_about_page/windows_about_page.dart";
import "package:doctor_app/desktop_layout_ui/pages/windows_admin_page/windows_admin_page.dart";
import "package:doctor_app/desktop_layout_ui/pages/windows_booking_page/windows_booking_page.dart";
import "package:doctor_app/desktop_layout_ui/pages/windows_home_page/windows_homepage_desktop.dart";
import "package:doctor_app/desktop_layout_ui/pages/windows_profile_page/windows_profile_page.dart";
import "package:doctor_app/providers/user_provider.dart";
import "package:doctor_app/widgets/appointments_list_wigdet/appointments_list_user_windows.dart";
import "package:doctor_app/widgets/mynavigation_bar/mynavigtion_bar.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";






class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => DesktopLayoutState();
}

class DesktopLayoutState extends State<DesktopLayout> {
  int selectedIndex = 0;
  
  List<dynamic> pages = [
    WindowsHomepage(),
    AppointmentListUser(),
    WindowsAdminPage(),
    WindowsBookingPage(),
    WindowsAboutPage(),
    WindowsProfilePage(),
  ];
  @override
  void initState() {
    super.initState();
    context
        .read<UserProvider>()
        .restoreSession(); // Check login immediately when the page opens
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: MynavigtionBar(
              screenIndex: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
          Expanded(flex: 5, child: pages[selectedIndex]),
        ],
      ),
    );
  }
}
