import 'package:doctor_app/widgets/book/patient_form.dart';
import 'package:doctor_app/widgets/book/date_picker.dart';
import 'package:doctor_app/widgets/book/time_picker.dart';
import 'package:flutter/material.dart';

class WindowsBookingPage extends StatefulWidget {
  const WindowsBookingPage({super.key});

  @override
  State<WindowsBookingPage> createState() => WindowsBookingPageState();
}

class WindowsBookingPageState extends State<WindowsBookingPage> {
  // const WindowsBookingPage({super.key});
  bool refresh = false;
   void refreshAll() {
    print("I am refresh function");
    setState(() {
     refresh = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: Stack(
        
        children: [
          
          Positioned(
            bottom: 10,
            right: 60,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: const Color(0xFFF57F17),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            top: 10,
            left: 60,
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 18, 241, 223),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),

            ///---Main Container Which hold Form, calender and date containers.-----///
            child: Container(
              margin: EdgeInsets.only(left: 160),
              width: MediaQuery.of(context).size.width * .75,
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 20,
                        ),
                        child: PatientForm( refresh : refreshAll),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70.0,
                          vertical: 60,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             DatePicker(),
                           Spacer(),

                            //-------TIME PICKER-------//
                            Expanded(child: TimePicker()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
