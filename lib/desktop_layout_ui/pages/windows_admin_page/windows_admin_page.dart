import 'package:doctor_app/desktop_layout_ui/desktop_layout.dart';
import 'package:doctor_app/providers/appointments_provider.dart';
import 'package:doctor_app/services/token_services.dart';
import 'package:doctor_app/utils/appointments_items_container.dart';
import 'package:doctor_app/widgets/admin/summary_card.dart';
import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_admin_android.dart';
import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_admin_window.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WindowsAdminPage extends StatefulWidget {
  const WindowsAdminPage({super.key});

  @override
  State<WindowsAdminPage> createState() => WindowsAdminPageState();
}

class WindowsAdminPageState extends State<WindowsAdminPage> {
  final services = TokenServices();
  void logOut() {
    services.deleteToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: SummaryCard(
                      myIcon: Icon(Icons.summarize),
                      title: "Today's Appointment",
                      value: "56",
                      subtitle: "Schedule for today",
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 50),
                  Expanded(
                    child: SummaryCard(
                        myIcon: Icon(Icons.check_box),
                      title: "Completed",
                      value: "56",
                      subtitle: "Schedule for today",
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 50),
                  Expanded(
                    child: SummaryCard(
                       myIcon: Icon(Icons.pending),
                      title: "Pending",
                      value: "56",
                      subtitle: "Schedule for today",
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 50),
                  Expanded(
                    child: SummaryCard(
                      myIcon: Icon(Icons.attach_money),
                      title: "Total",
                      value: "56",
                      subtitle: "Schedule for today",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 216, 218, 218).withValues(alpha: 0.2), // Shadow color
                        spreadRadius: 4, // Extent of shadow inflation
                        blurRadius: 8, // Haziness of the shadow edges
                        offset: const Offset(
                          0,
                          4,
                        ), // Shadow position displacement (x, y)
                      ),
                    ],
                  ),

                  child: AppointmentsListAdminWindow(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
