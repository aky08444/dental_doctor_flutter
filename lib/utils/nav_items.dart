import 'package:flutter/material.dart';

class Navitems extends StatefulWidget {
  const Navitems({super.key , required this.value});

  final String value;

  @override   
  State<Navitems> createState() => NavitemsState();
}

class NavitemsState extends State<Navitems> {  

   @override 
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
       decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
       ),
      
       child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal :12.0 , vertical: 10.0) ,
          child: Text(widget.value , style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ),
       ),
        ),
    );
  }
}