import 'package:doctor_app/providers/appointments_provider.dart';

import 'package:doctor_app/widgets/dropdownbox/dropdown_box.dart';
import 'package:doctor_app/widgets/myimage_picker/myimage_picker.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppointmentsListUserAndroid extends StatefulWidget {
  const AppointmentsListUserAndroid({super.key});

  @override
  State<AppointmentsListUserAndroid> createState() =>
      AppointmentsListUserAndroidState();
}

class AppointmentsListUserAndroidState
    extends State<AppointmentsListUserAndroid> {
  String selectedStatus = "Pending";
  bool isEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            
           
            Text(
                        "Your Appointments",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    
            SizedBox(height: 7),
            Expanded(
              child: ListView.builder(
                itemCount: context
                    .watch<AppointmentsProvider>()
                    .appointments
                    .length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dr Tyagi Shrivastav",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "12-01-2026",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[700],
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                   "8:00AM - 12:00Pm",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                 
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      // width: 125,
                                      child: Center(
                                        child: CustomDropdown(
                                         
                                          
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    SizedBox(
                                      height: 35,
                                      child: MyImagePicker(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
