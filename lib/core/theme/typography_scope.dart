import 'package:doctor_app/core/theme/appTypography.dart';
import 'package:flutter/material.dart';


class Typographydata extends InheritedWidget {
  final AppTypography typography;
  const Typographydata({super.key , required this.typography , required super.child});
   static Typographydata of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Typographydata>()!;
  }

  @override 
  bool  updateShouldNotify(Typographydata oldWidget) {
    return typography != oldWidget.typography;
  }
  
}

