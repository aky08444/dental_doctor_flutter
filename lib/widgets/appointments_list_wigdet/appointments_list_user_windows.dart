import 'package:doctor_app/utils/custom_button.dart';
import 'package:doctor_app/widgets/dropdownbox/dropdown_box.dart';
import 'package:doctor_app/widgets/myimage_picker/myimage_picker.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/providers/appointments_provider.dart';
import 'package:provider/provider.dart';

class AppointmentListUser extends StatefulWidget {
  const AppointmentListUser({super.key});

  @override
  State<AppointmentListUser> createState() => AppointmentListUserState();
}

class AppointmentListUserState extends State<AppointmentListUser> {
  final TextEditingController bookingIdController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final List<dynamic> appointment = [];
  Future<void> sendData() async {
    context.read<AppointmentsProvider>().fetchUserAppointment({
      "bookingId": bookingIdController.text,
      "phone": phoneController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: context.watch<AppointmentsProvider>().gotAppointments == true
              ? SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(
                          "Your Appointments",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                     ),
                     SizedBox( height :10),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            
                            decoration: BoxDecoration(
                              color: Colors.blue[500],
                              
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                               Expanded(
                                                child: Center(
                          child: FittedBox(
                            child: Text(
                              "Doctor Name",
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
                              "Date",
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
                              "Time",
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
                      ),
                      Expanded(
                        flex: 9,
                        child: ListView.builder(
                          itemCount: context
                              .watch<AppointmentsProvider>()
                              .appointments
                              .length,
                          itemBuilder: (context, index) {
                            return  SizedBox(
                                

                                height: 55,
                                
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Center(
                                            child: FittedBox(
                                              child: Text(
                                                "Dr Tyagi Shrivastav",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      Expanded(
                                    child: Center(
                                      child: FittedBox(
                                        child: Text(
                                          "12/07/2026",
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
                                          "8:00 AM-10:00PM",
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
                              
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FittedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "Check booking Status",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // height: 20,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                // border: Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 28.0,
                                ),
                                child: TextField(
                                  controller: bookingIdController,
                                  decoration: InputDecoration(
                                    labelText: "BookingId",
                                    hintText: "Enter BookingId",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // height: 20,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                // border: Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 28.0,
                                ),
                                child: TextField(
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                    labelText: "Phone",
                                    hintText: "Enter your Phone no",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              sendData();
                            },
                            child: CustomButton(value: "Show my appointmentss"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
