import 'package:flutter/material.dart';

class DoctorDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext contexy) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[800],
                // borderRadius: BorderRadius.circular(100),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(child: Image.asset("assets/images/doctor.png")),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 18, 241, 223),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
