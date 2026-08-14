import 'package:flutter/material.dart';

class DatepickerItemsContainer extends StatelessWidget {
  const DatepickerItemsContainer({super.key, this.value , this.color});

  final dynamic value;
  final dynamic color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),

      child:  Padding(
        padding: const  EdgeInsets.symmetric(horizontal: 8.0 , vertical: 4.0),
        child: FittedBox(child: Text(value , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
      )
    );
  }
}
