import 'package:doctor_app/providers/appointments_provider.dart';
import 'package:doctor_app/widgets/admin/summary_card.dart';
import 'package:doctor_app/widgets/dropdownbox/dropdown_box.dart';
import 'package:doctor_app/widgets/myimage_picker/myimage_picker.dart';
import 'package:doctor_app/widgets/switchbtn/onoffbtn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppointmentsListAdminAndroid extends StatefulWidget {
  const AppointmentsListAdminAndroid({super.key});

  @override
  State<AppointmentsListAdminAndroid> createState() =>
      AppointmentsListAdminAndroidState();
}

class AppointmentsListAdminAndroidState
    extends State<AppointmentsListAdminAndroid> {
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: SummaryCard(
                              myIcon: Icon(Icons.summarize),
                              title: "Total",
                              value: "56",
                              subtitle: "Scheduled for today",
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: SummaryCard(
                              myIcon: Icon(Icons.check_box),
                              title: "Confirmed",
                              value: "56",
                              subtitle: "Scheduled for today",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: SummaryCard(
                              myIcon: Icon(Icons.pending),
                              title: "Pending",
                              value: "56",
                              subtitle: "Scheduled for today",
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: SummaryCard(
                              myIcon: Icon(Icons.attach_money),
                              title: "Revenue",
                              value: "56",
                              subtitle: "Scheduled for today",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(0.0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Appointments List",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 100, maxHeight: 35),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 206, 210, 212),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          style: TextStyle(fontSize: 11),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                                    context
                                        .watch<AppointmentsProvider>()
                                        .appointments[index]["patientName"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    context
                                        .watch<AppointmentsProvider>()
                                        .appointments[index]["date"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[700],
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    context
                                        .watch<AppointmentsProvider>()
                                        .appointments[index]["phone"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    context
                                        .watch<AppointmentsProvider>()
                                        .appointments[index]["address"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[500],
                                      fontSize: 11,
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
