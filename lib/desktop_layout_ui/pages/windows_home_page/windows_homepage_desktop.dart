import 'package:doctor_app/widgets/homepage/hero_content.dart';
import 'package:doctor_app/widgets/homepage/hero_image.dart';
import 'package:doctor_app/widgets/homepage/hero_services.dart';
import 'package:flutter/material.dart';

class WindowsHomepage extends StatelessWidget {
  const WindowsHomepage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //-------Upper Section-------//
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Row(
              children: [
                Expanded(flex: 3, child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: HeroContent( ),
                )),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HeroImage(),
                  ),
                ),
              ],
            ),
          ),
          //------Lower Section------//
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: HeroServices(),
            ),
          ),
        ],
      ),
    );
  }
}
