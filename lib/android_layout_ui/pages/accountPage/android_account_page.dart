import 'package:doctor_app/android_layout_ui/pages/android_profile_page/android_profile_page.dart';
import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_user_windows.dart';


import 'package:flutter/material.dart';

class AndroidAccountPage extends StatefulWidget {
  const AndroidAccountPage({super.key});

  @override
  State<AndroidAccountPage> createState() => AndroidAccountPageState();
}

class AndroidAccountPageState extends State<AndroidAccountPage> {
  final List<Widget> pages = [AndroidProfilePage(), AppointmentListUser()];
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,

      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  // flex: 1,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedIndex == 0
                                  ? Colors.amber
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Account",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selectedIndex == 0
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedIndex == 1
                                ? Colors.amber
                                : Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Appointments",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: selectedIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                  SingleChildScrollView(child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7, 
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: pages[selectedIndex],
                  ),) ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
