import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_admin_android.dart';
import 'package:doctor_app/widgets/appointments_list_wigdet/appointments_list_admin_window.dart';
import 'package:flutter/material.dart';

class AppointmentspageAndroid extends StatelessWidget {
  const AppointmentspageAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: AppointmentsListAdminAndroid(),
    );
  }
}