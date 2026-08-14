import 'package:doctor_app/widgets/book/date_picker.dart';
import 'package:doctor_app/widgets/book/patient_form.dart';
import 'package:doctor_app/widgets/book/time_picker.dart';
import 'package:flutter/material.dart';

class BookingpageAndroid extends StatefulWidget {
  const BookingpageAndroid({super.key});

  @override
  State<BookingpageAndroid> createState() => BookingpageAndroidState();
}

class BookingpageAndroidState extends State<BookingpageAndroid> {
  void refreshAll() {
    setState(() {});
    print("jjjj");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 252, 252, 252),
          borderRadius: BorderRadius.circular(15),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(flex: 1, child: DatePicker()),
                      SizedBox(height: 20,),
                      Expanded(flex: 1, child: TimePicker()),
                      SizedBox(height: 20,),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiary,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal :8.0),
                            child: PatientForm(refresh: refreshAll),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
