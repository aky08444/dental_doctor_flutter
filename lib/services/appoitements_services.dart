import 'package:http/http.dart' as http;
import 'dart:convert';

class AppointmentService {
  //Fetches all appointents from server, Admin api.
  Future<List<dynamic>> getallAppointments() async {
    
    try {
      final fetchallAppointment = await http.get(
        Uri.parse("http://localhost:3000/api/admin/appointments"),
      );
     final appointmentResponse = jsonDecode(fetchallAppointment.body);
      final list = appointmentResponse['list'];
      
      return list;
    } catch (error) {
      return [error];
    }
  }
      
     
      



  Future<Map<String, dynamic>> createAppointment(dynamic appointment) async {
    try {
      final addappointment = await http.post(
        Uri.parse("http://localhost:3000/api/users/appointments"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(appointment),
      );
      final addappointmentResponse = await jsonDecode(addappointment.body);

      return addappointmentResponse;
    } catch (error) {
      return {"error": error};
    }
  }

  Future<List<dynamic>> getuserAppointment(dynamic usercredentials) async {
    try {
      final userappointmentResponse = await http.post(
        Uri.parse("http://localhost:3000/api/users/appointments/user"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(usercredentials),
      );
      
      final appointementsdata = jsonDecode(userappointmentResponse.body);
      
      final list = appointementsdata['list'];
      return list;

    } catch (error) {
      return [error];
    }
  }
     


  Future<String> updateAppointment(String userid) async {
    try {
      final response = await http.patch(
        Uri.parse("http://localhost:3000/api/users/appointments/update"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"userid": userid}),
      );
      
      return response.body;
    } catch (error) {
      return error.toString();
    }
  }
}
