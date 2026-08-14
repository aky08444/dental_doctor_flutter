// import 'package:doctor_app/providers/user_provider.dart';
import 'package:doctor_app/utils/custom_button.dart';
import 'package:doctor_app/validate/appointment_validate.dart';
import 'package:doctor_app/widgets/book/date_picker.dart';
import 'package:flutter/material.dart';

// import 'package:doctor_app/services/appoitements_services.dart';
// import 'package:provider/provider.dart';
class PatientForm extends StatefulWidget {
  const PatientForm({super.key, required this.refresh});
  final Function refresh;
  @override
  State<PatientForm> createState() => PatientFormState();
}

class PatientFormState extends State<PatientForm> {
  final TextEditingController patientnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  // final AppointmentService _service = AppointmentService();
  final services = AppointmentValidate();
  final datePicker = DatePicker();
  bool iscompleted = false;

  void sendData() {
    services.patientdetails({
      "patientname": patientnameController.text,
      "phone": phoneController.text,
      "address": addressController.text,
    });

    patientnameController.clear();
    phoneController.clear();
    addressController.clear();
  }

  void fresh() {
    print("I am fresh");
    widget.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Text(
                "Enter Patient Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 230, 227, 227),
                ),
              ),
            ),
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey, width: 2),
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextField(
                  controller: patientnameController,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Enter your name",
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
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                // border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: "Phone No",
                    hintText: "Enter your Phone no",
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
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Container(
              // height: 20,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                // border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextField(
                  controller: addressController,
                  decoration: InputDecoration(
                    labelText: "Address",
                    hintText: "Enter your Address",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),

        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: InkWell(
                onTap: () => {sendData(), fresh()},
                child: CustomButton(value: "Book Now"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
