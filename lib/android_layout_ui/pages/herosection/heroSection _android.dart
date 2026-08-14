import 'package:doctor_app/widgets/homepage/hero_services.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/widgets/homepage/hero_image.dart';
import 'package:doctor_app/widgets/homepage/hero_content.dart';

class HerosectionAndroid extends StatelessWidget {
  const HerosectionAndroid({super.key}) ;

  @override  
 Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric( horizontal :8.0),
    child: Column(
      children: [
             Expanded( flex: 4 , child: Row(
              children: [
                Expanded( flex : 1 , child:   HeroContent(),
                ),
                Expanded( flex : 1 , child: HeroImage()),
              ],
             ) ),
             SizedBox(height: 15,),
             Expanded( flex: 6 , child: Row(
              children: [
                Expanded( flex : 1 , child: Padding(
                  padding: const EdgeInsets.symmetric( horizontal:  0.0  ),
                  child: HeroServices(),
                )),
                
              ],
             ) )
      ],
    ),
  );
 }
}

