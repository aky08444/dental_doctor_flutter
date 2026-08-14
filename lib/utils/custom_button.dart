import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: color.secondary,
            borderRadius: BorderRadius.circular(25),
          ),
          height: 40,
          // width: 160,
        
          child:  Padding(
              padding: const EdgeInsets.symmetric( horizontal:15.0 , vertical: 10),
              child: FittedBox(child: Text(value , style: TextStyle(color: color.tertiary , fontSize: 11))),
            ),
          
        ),
      ),
    );
  }
}
