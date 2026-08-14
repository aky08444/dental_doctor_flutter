import 'package:doctor_app/android_layout_ui/android_layout.dart';
import 'package:doctor_app/core/theme/typography_config.dart';
import 'package:doctor_app/core/theme/typography_scope.dart';
import 'package:doctor_app/desktop_layout_ui/desktop_layout.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});
   
  @override 
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context , constraints) {
      if ( MediaQuery.of(context).size.width < 600) {
       return Typographydata(typography: mobileTypography, child: AndroidLayout());
      } 
      else if(MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.width < 1200) {
        return Typographydata(typography: tabletTypography, child: DesktopLayout());
      }
      else {
        return Typographydata(typography: desktopTypography, child: DesktopLayout());
      }
    });
  }
}