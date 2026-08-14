import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => UserDetailsState();
}

class UserDetailsState extends State<UserDetails> {
  bool isEditing = false;
  final TextEditingController nameController = TextEditingController(text : "Anurag yadav");
  final TextEditingController phoneController = TextEditingController(text : "7880645809");
  final TextEditingController emailController = TextEditingController(text : "aky08444@gmail.com");
  final TextEditingController addressController = TextEditingController(text : "Kakwa Road Amethi");
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric( horizontal : 18.0),
          child: Text("Name" , style : TextStyle(
            fontWeight: FontWeight.bold
          )),
        ),
        TextField(
          controller: nameController,
          readOnly: !isEditing,
          decoration:  InputDecoration(
            // labelText: "Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.symmetric( horizontal : 18.0),
           child: Text("Phone" , style : TextStyle(
            fontWeight: FontWeight.bold
           )),
         ),
        TextField(
          controller: phoneController,
          readOnly: !isEditing,
          decoration: InputDecoration(
            // labelText: "Phone",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.symmetric( horizontal : 18.0),
           child: Text("Email" , style : TextStyle(
            fontWeight: FontWeight.bold
           )),
         ),
        TextField(
          controller: emailController,
          readOnly: !isEditing,
          decoration: InputDecoration(
            // labelText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),

         Padding(
           padding: const EdgeInsets.symmetric( horizontal : 18.0),
           child: Text("Address" , style : TextStyle(
            fontWeight: FontWeight.bold
           )),
         ),
        TextField(
          controller: addressController,
          readOnly: !isEditing,
          decoration: InputDecoration(
            // labelText: "Address",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),

        const SizedBox(height: 20),

        ElevatedButton(
          onPressed: () {
            setState(() {
              isEditing = !isEditing;
            });
          },
          child: Text(isEditing ? "Save" : "Edit"),
        ),
      ],
    );
  }
}
