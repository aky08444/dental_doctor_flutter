import 'dart:io';
import 'package:doctor_app/services/image_services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({super.key});

  @override
  State<MyImagePicker> createState() => MyImagePickerState();
}

class MyImagePickerState extends State<MyImagePicker> {
  bool isUploaded = false;
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();
  final services = ImageServices();
  // Function to pick image from Gallery or Camera
  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: 1800, // Optional optimization to resize images
        maxHeight: 1800,
        imageQuality:
            85, // Compresses image quality slightly to reduce file size
      );

      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
          services.uploadImage(pickedFile);
          isUploaded = true;
        });
      }
    } catch (e) {
      debugPrint("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: InkWell(
        onTap: () {
          _pickImage(ImageSource.gallery);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 124, 188, 241), width: 1),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  isUploaded? "✓ Uploaded" : "Upload",
                  style: TextStyle(color: const Color.fromARGB(255, 124, 188, 241)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
