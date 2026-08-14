import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class ImageServices {
  //THis function will be used to send the image on server.
  void uploadImage(XFile image) async {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse("http://localhost:3000/api/users/upload"),
    );

    request.files.add(await http.MultipartFile.fromPath("image", image.path));

    http.StreamedResponse response = await request.send();
    String responseBody =  await response.stream.bytesToString();
    Map<String,dynamic> data = jsonDecode(responseBody);
    print(data);
    
  }

  //This function will be used to get the image from server.
  void fetchImage() {
    
  }
}
