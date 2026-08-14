import 'package:doctor_app/core/theme/typography_scope.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String heading;
  // final String description ;
  final String path;

  const CustomContainer({super.key, required this.path, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          // border: Border.all(width: 1, color: Colors.grey),
        ),

        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(path , height: 60, ),
              ),
             


              Text(
                heading,
                style: Typographydata.of(context).typography.body
              ),
            ],
          ),
        ),
      ),
    );
  }
}
