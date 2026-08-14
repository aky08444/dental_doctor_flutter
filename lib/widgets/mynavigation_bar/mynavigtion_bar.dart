import 'package:doctor_app/desktop_layout_ui/pages/windows_login_page/windows_login_page.dart';
import 'package:doctor_app/desktop_layout_ui/pages/windows_profile_page/windows_profile_page.dart';
import 'package:doctor_app/desktop_layout_ui/pages/windows_admin_page/windows_admin_page.dart';
import 'package:doctor_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MynavigtionBar extends StatefulWidget {
  const MynavigtionBar({super.key, required this.screenIndex});
  final Function(int) screenIndex;
  @override
  State<MynavigtionBar> createState() => MynavigtionBarState();
}

class MynavigtionBarState extends State<MynavigtionBar> {
  int currentScreen = 0;
  int index = 2;

  List<String> screens = [
    "Home",
    "Book",
    "MyAppointment",
    "About",
    "Profile",
    "Admin",
  ];
  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal:12.0),
      child: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Row(
            children: [
               SizedBox(width: 200,   
               
                 
                  child: Padding(
                    padding: const EdgeInsets.symmetric( horizontal:16.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WindowsProfilePage(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                          "ORAL",
                          style: TextStyle(
                            color: color.primary,
                            height: 0.8,
                            fontWeight: FontWeight.w700,
                            fontSize: 48
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            "Dental Clinic",
                            style: TextStyle(
                              color: Colors.black,
                              height: 0.8,
                              fontWeight: FontWeight.w500,
                              fontSize: 24
                            ),
                          ),
                        ),
                          ],
                        )
                      ),
                  ),
                  
               ),
               
              Expanded(
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0.0,
                        vertical: 0.0,
                      ),
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //-----HOME SECTION------//
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentScreen = screens.indexOf("Home");
                                  });
                                  widget.screenIndex(0);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        currentScreen == screens.indexOf("Home")
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
      
                                  child: FittedBox(
                                    child: MouseRegion(
                                      cursor : SystemMouseCursors.click,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 10.0,
                                        ),
                                        child: Text(
                                          screens[0],

                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:
                                                currentScreen ==
                                                    screens.indexOf("Home")
                                                ? Colors.blue[800]
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
      
                            //-----APPOITEMENTS SECTION------//
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentScreen = screens.indexOf("Book");
                                  });
                                  widget.screenIndex(1);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        currentScreen == screens.indexOf("Book")
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
      
                                  child: FittedBox(
                                    child: MouseRegion(
                                      cursor : SystemMouseCursors.click,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 10.0,
                                        ),
                                        child: Text(
                                          screens[1],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                             fontSize: 16,
                                            color:
                                                currentScreen ==
                                                    screens.indexOf("Book")
                                                ? Colors.blue[800]
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //-----BOOKINGS OPTION------//
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  int index;
      
                                  final user = context.read<UserProvider>();
      
                                  if (!user.isLogin) {
                                    index = 2;
                                  } else if (user.isAdmin) {
                                    index = 5;
                                  } else {
                                    index = 4;
                                  }
      
                                  setState(() {
                                    currentScreen = index;
                                  });
      
                                  widget.screenIndex(index);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: currentScreen == index
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
      
                                  child: FittedBox(
                                    child: MouseRegion(
                                      cursor : SystemMouseCursors.click,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 10.0,
                                        ),
                                        child: context.watch<UserProvider>().isLogin
                                            ? context.watch<UserProvider>().isAdmin
                                                  ? Text(
                                                      "Admin",                                                      
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16,
                                                        color:
                                                            currentScreen ==
                                                                screens.indexOf(
                                                                  "Admin",
                                                                )
                                                            ? Colors.blue[800]
                                                            : Colors.black,
                                                      ),
                                                    )
                                                  : Text(
                                                      "Profile",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16,
                                                        color: currentScreen == screens.indexOf("Profile")
                                          ? Colors.blue[800]
                                          : Colors.black,
                                                      ),
                                                    )
                                            : Text(
                                                "MyAppointment",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: currentScreen == screens.indexOf("MyAppointment")
                                          ? Colors.blue[800]
                                          : Colors.black,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
      
                            //-----ABOUT OPTION------//
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currentScreen = screens.indexOf("About");
                                  });
                                  widget.screenIndex(3);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        currentScreen == screens.indexOf("About")
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
      
                                  child: FittedBox(
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 10.0,
                                        ),
                                        child: Text(
                                          screens[3],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:
                                                currentScreen ==
                                                    screens.indexOf("About")
                                                ? Colors.blue[800]
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
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
                ),
              ),
               SizedBox( width: 200,
                child: Center(
                  child: context.watch<UserProvider>().isLogin
                      ? InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WindowsAdminPage(),
                              ),
                            );
                          },
                          child: CircleAvatar(),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WindowsLoginPage(),
                                ),
                              );
                            },
                            child: FittedBox(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0,
                                  vertical: 8.0,
                                ),
                                child: MouseRegion(
                                  
                                  cursor: SystemMouseCursors.click,
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                
               )),
              
            ],
          ),
        ),
      ),
    );
  }
}



               
               