import 'package:doctor_app/utils/services_items_container.dart';
import 'package:doctor_app/core/theme/typography_scope.dart';
import 'package:flutter/material.dart';

class HeroServices extends StatelessWidget {
  const HeroServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text("OUR SERVICES" , style: Typographydata.of(context).typography.sectionTitle,
        ),
        SizedBox(height: 14,),
        Expanded(
         
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:  0.0 , horizontal: 0),
            child: GridView.count(
              // mainAxisSpacing: 20,
              // crossAxisSpacing: 50,
              childAspectRatio: 1,
              mainAxisExtent: 180,
              crossAxisCount: 3,
              children: [
                CustomContainer( heading: "Root Canal\n Treatment" , path: "assets/images/root.jpg",),
                CustomContainer( heading: "Dental\nImplant" , path: "assets/images/implants.jpg",),
                CustomContainer( heading : "Tooth\nFilling", path: "assets/images/filling.jpg",),
                CustomContainer(heading: "Teeth\nCleaning" , path: "assets/images/cleaning.jpg",),
                CustomContainer( heading: "Braces &\nOrthodontics" , path: "assets/images/braces.jpg",),
                CustomContainer(heading: "Emergency\nDental Care", path: "assets/images/emergency.jpg",),
              ],
            ),
              
          ),
        ),
      ],
    );
  }
}
                
              
                
