import 'package:doctor_app/core/theme/typography_scope.dart';
import 'package:doctor_app/utils/custom_button.dart';
import 'package:flutter/material.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "PROFESSIONAL DENTAL CARE",
          style: Typographydata.of(context).typography.eyebrow,
        ),
        SizedBox(height: 10),
        Text("ORAL", style: Typographydata.of(context).typography.heroTitle),
        Text("DENTAL", style: Typographydata.of(context).typography.heroTitle),
        SizedBox(height: 10),

        //-------SLOGAN SECTION-----//
        Text(
          "Transforming Smile \n with Precision and care",
          style: Typographydata.of(context).typography.heroSubtitle,
        ),
        SizedBox(height: 10),
        // Expanded(

        //   child: FittedBox(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         SizedBox(
        //           height: 50,
        //           child: FittedBox(
        //             // alignment: Alignment.bottomCenter,
        //             child: Text(
        //               "PROFESSIONAL DENTAL CARE",
        //               style: Typographydata.of(context).typography.eyebrow,
        //             ),
        //           ),
        //         ),

        //         FittedBox(
        //           alignment: Alignment.center,
        //           child: Padding(
        //             padding: const EdgeInsets.all(0.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [

        //                 SizedBox(height: 20),
        //                 Text(
        //                   "ORAL",
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     color: color.primary,
        //                     height: 0.8,
        //                     fontSize: 180,
        //                   ),
        //                 ),
        //                 Text(
        //                   "DENTAL",
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     color: color.primary,
        //                     height: 0.8,
        //                     fontSize: 180,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: 30),
        //         FittedBox(
        //           child: Text(
        //             "Transforming Smile \n with Precision and care",
        //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
        //           ),
        //         ),
        //          SizedBox(height: 30),
        //         //-------BOOKING BUTTON SECTION-----//
        //         SizedBox( height: 60  ,child: CustomButton(value: "Book Appoitement")),
        //       ],
        //     ),
        //   ),
        // ),
        // SizedBox(height: 10),
        //-------BOOKING BUTTON SECTION-----//
        CustomButton(value: "Book Appoitement"),
      ],
    );
  }
}
