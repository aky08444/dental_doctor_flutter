import 'package:doctor_app/widgets/profile/avtaar.dart';
import 'package:doctor_app/widgets/profile/user_details.dart';
import 'package:flutter/material.dart';

class AndroidProfilePage extends StatelessWidget {
  const AndroidProfilePage({super.key});

  @override  
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded( flex: 2 ,child: Avtaar()),
        Expanded( flex: 8 ,child: UserDetails())
      ],
    );
  }
}