import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  
  const CustomDropdown({
    super.key,
    
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool isOpen = false;
  List options = ["Pending","Ongoing" ,"Completed" , ];
  List<Color> myColors = [Colors.yellow[400]! , Colors.blue[400]! , Colors.green[400]! ];
   int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Dropdown box
       Container(
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              border: Border.all(color: myColors[selectedIndex]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector( onTap: () =>{
                 setState(() {
                    if(selectedIndex != 0) {
                      selectedIndex = selectedIndex - 1;
                    }
                    else {
                      selectedIndex = 0;
                    }
                 })
                } , child: MouseRegion(cursor: SystemMouseCursors.click ,child: Icon(Icons.keyboard_arrow_left))),
                Text(options[selectedIndex], style:  TextStyle(fontSize: 14 , color: myColors[selectedIndex] )),

                GestureDetector(
                  onTap: () => {
                 setState(() {
                    if(selectedIndex != 2) {
                      selectedIndex = selectedIndex + 1;
                    }
                 })
                  },
                  child: MouseRegion( cursor: SystemMouseCursors.click ,child: Icon(Icons.keyboard_arrow_right))),
              ],
            ),
          ),
        
      ],
    );
  }
}
