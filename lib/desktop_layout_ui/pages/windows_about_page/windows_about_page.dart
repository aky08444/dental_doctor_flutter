import 'package:doctor_app/widgets/about/doctor_about_section.dart';
import 'package:doctor_app/widgets/about/doctor_decoration.dart';
import 'package:flutter/material.dart';

class WindowsAboutPage extends StatelessWidget {
  const WindowsAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex: 1, child: DoctorDecoration()),
            Expanded(flex: 1, child: DoctorAboutSection()),
          ],
        ),
      ),
    );
  }
}
