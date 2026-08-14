import 'package:doctor_app/providers/appointments_provider.dart';
import 'package:doctor_app/widgets/dropdownbox/dropdown_box.dart';
import 'package:doctor_app/widgets/myimage_picker/myimage_picker.dart';
import 'package:doctor_app/widgets/switchbtn/onoffbtn.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class AppointmentsListAdminWindow extends StatefulWidget {
  const AppointmentsListAdminWindow({super.key});

  @override
  State<AppointmentsListAdminWindow> createState() => AppointmentsListState();
}

class AppointmentsListState extends State<AppointmentsListAdminWindow> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<void> loadData() async {
    context.read<AppointmentsProvider>().fetchAppointments();
  }

  List<String> listname = ["hhh", "jdhfjsdfs", "dbkjd"];
  bool isEnabled = true;
  bool ischecked = false;
  var currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(2.0),

                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Appointments List",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 300),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 206, 210, 212),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: TextField(
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
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              flex: 1,
              child: Container(
                // height: 900,
                decoration: BoxDecoration(
                  color: Colors.blue[500],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            "Patient Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            "Date & Time",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            "Phone",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            "Address",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            "Status",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: FittedBox(
                          child: Text(
                            "Attachments",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 8,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,

                child: ListView.builder(
                  itemCount: context
                      .watch<AppointmentsProvider>()
                      .appointments
                      .length,

                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 55,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blue[400],
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  1.0,
                                                ),
                                                child: Text(
                                                  "01",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Center(
                                            child: FittedBox(
                                              child: Text(
                                                context
                                                    .watch<
                                                      AppointmentsProvider
                                                    >()
                                                    .appointments[index]["patientName"],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: FittedBox(
                                        child: Text(
                                          context
                                              .watch<AppointmentsProvider>()
                                              .appointments[index]["date"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: FittedBox(
                                        child: Text(
                                          context
                                              .watch<AppointmentsProvider>()
                                              .appointments[index]["phone"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey[600],
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: FittedBox(
                                        child: Text(
                                          context
                                              .watch<AppointmentsProvider>()
                                              .appointments[index]["address"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey[500],
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      // width: 125,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0,
                                        ),
                                        child: CustomDropdown(),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: MyImagePicker(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(height: 2, color: Colors.blueGrey),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
