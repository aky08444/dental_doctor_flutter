import 'package:flutter/material.dart';

class Avtaar extends StatelessWidget {

  @override  
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: MouseRegion(
        cursor :SystemMouseCursors.click ,
        child: CircleAvatar(
          
          radius: 100,
          // child: Image.asset("assets/images/doctor.png"),
          backgroundImage: AssetImage('assets/images/doctor.png'),
        ),
      ),
    );
  }
}