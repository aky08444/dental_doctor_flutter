import 'package:doctor_app/services/appoitements_services.dart';
import 'package:flutter/material.dart';

class AppointmentsProvider extends ChangeNotifier {
  final AppointmentService _service = AppointmentService();

  List<dynamic> appointments = [{
    "patientName": "Rahul Sharma",
    "date": "10:00am - 12:00pm",
    "phone": "7880645809",
    "address": "Kakwa Road, Raipur, Fulwari, Amethi",
    "status": "pending",
    "isCompleted": false,
  },
  {
    "patientName": "Priya Verma",
    "date": "12:00pm - 01:00pm",
    "phone": "9123456780",
    "address": "Civil Lines, Lucknow",
    "status": "pending",
    "isCompleted": false,
  },
  {
    "patientName": "Amit Singh",
    "date": "02:00pm - 03:00pm",
    "phone": "9876543210",
    "address": "Gomti Nagar, Lucknow",
    "status": "pending",
    "isCompleted": false,
  },
  {
    "patientName": "Neha Gupta",
    "date": "03:00pm - 04:00pm",
    "phone": "8765432109",
    "address": "Faizabad Road, Ayodhya",
    "status": "pending",
    "isCompleted": false,
  },
  {
    "patientName": "Vikash Yadav",
    "date": "04:00pm - 05:00pm",
    "phone": "7654321098",
    "address": "Sultanpur Road, Sultanpur",
    "status": "pending",
    "isCompleted": false,
  },
  {
    "patientName": "Anjali Singh",
    "date": "05:00pm - 06:00pm",
    "phone": "9345678120",
    "address": "Station Road, Amethi",
    "status": "pending",
    "isCompleted": false,
  },
  {
    "patientName": "Rohit Kumar",
    "date": "06:00pm - 07:00pm",
    "phone": "8456789123",
    "address": "Indira Nagar, Lucknow",
    "status": "pending",
    "isCompleted": false,
  },
  {
    "patientName": "Sneha Mishra",
    "date": "07:00pm - 08:00pm",
    "phone": "9567891234",
    "address": "Civil Lines, Prayagraj",
    "status": "pending",
    "isCompleted": false,
  },];
  List<dynamic> pendingAppointments = [];
  List<dynamic> confirmedAppointments = [];
  bool gotAppointments = false;
  Future<void> fetchAppointments() async {
    appointments = await _service.getallAppointments();
    print(appointments.runtimeType);
    print(appointments.first.runtimeType);
    pendingAppointments = appointments
        .where((appointment) => appointment["status"] == "pending")
        .toList();

    confirmedAppointments = appointments
        .where((appointment) => appointment["status"] == "confirmed")
        .toList();

    notifyListeners();
  }

  Future<void> updateAppointments(String userid) async {
    print(userid);
    await _service.updateAppointment(userid);
    fetchAppointments();

    notifyListeners();
  }

  Future<void> fetchUserAppointment(dynamic data) async {
    print(data);
    final response = await _service.getuserAppointment(data);
    appointments = response;
    gotAppointments = true;
    print(appointments);
    notifyListeners();
  }
}
