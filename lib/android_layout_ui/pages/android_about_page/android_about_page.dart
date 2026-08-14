import 'package:doctor_app/widgets/about/doctor_about_section.dart';
import 'package:doctor_app/widgets/about/doctor_decoration.dart';
import 'package:flutter/material.dart';

class AndroidAboutPage extends StatelessWidget {
  const AndroidAboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(children: [Expanded(flex: 2, child: DoctorDecoration() ), Expanded(flex: 3, child: DoctorAboutSection())]),
    );
  }
}
