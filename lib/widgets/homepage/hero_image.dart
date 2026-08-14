import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(28.0),
      // container that hold the priview image
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(180),
            bottomLeft: Radius.circular(180),
            bottomRight: Radius.circular(80),
          ),
        ),
        child: Image.asset('assets/images/doctor.png'),
      ),
    );
  }
}
