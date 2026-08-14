import 'package:doctor_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key, required this.screenIndex});
  final Function(int) screenIndex;
  @override
  State<Bottomnavigationbar> createState() => BottomnavigationbarState();
}

class BottomnavigationbarState extends State<Bottomnavigationbar> {

  String filed = "MyAppointment";
  @override
  void initState() {
    super.initState();
    option(); // Runs immediately when the page opens
    
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: .bold,
  );
 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2 && context.read<UserProvider>().isLogin == true) {
        
        widget.screenIndex(index + 2);
      } else {
        widget.screenIndex(index);
      }
     
    });
  }

  void option() {
    if (context.read<UserProvider>().isLogin == true ) {
      filed = "Profie";
    }
  }

    
    

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, 
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Book'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: filed ),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'About'),
      ],

      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
