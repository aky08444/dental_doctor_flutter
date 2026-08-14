import 'package:doctor_app/services/appoitements_services.dart';

class AppointmentValidate {
  final services = AppointmentService();
  Map<String, dynamic> appointement = {
    "patientname": "",
    "phone": "",
    "address": "",
    "userid": "",
    "date": "",
    "time": "",
    "bookingId" : "1234"
  };

  Map<String, String> patientdetails(dynamic patientdata) {
    
    
      appointement["patientname"] = patientdata["patientname"];
      appointement["phone"] = patientdata["phone"];
      appointement["address"] = patientdata["address"];
       sendData(appointement);
      // print(patientdata);
      print(appointement);
    return {"Message": "Success"};
  }

  Map<String, String> date(String date) {
    // print(date);
    
    if (date == "") {
      return {"Message": "All fields are required"};
    } else {
      appointement["date"] = date;
    }
    //  print(appointement);
    return {"Message": "Success"};
  }

  Future<Map<String, String>> time(String time) async {
    if (time == "") {
      return {"Message": "All fields are required"};
    } else {
      appointement["time"] = time;
    }

    return {"Message": "Success"};
  }


  void sendData(dynamic data) {
     services.createAppointment(data);
  }
}
