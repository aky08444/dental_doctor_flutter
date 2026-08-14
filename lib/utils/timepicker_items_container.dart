import 'package:flutter/material.dart';

class TimepickerItemsContainer extends StatelessWidget { 
  const TimepickerItemsContainer({super.key, this.value , this.color});

  final dynamic value;
  final dynamic color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      
        child:  Padding(
          padding: const  EdgeInsets.symmetric(horizontal: 8.0 , vertical: 4.0),
          child: FittedBox(child: Text(value , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}