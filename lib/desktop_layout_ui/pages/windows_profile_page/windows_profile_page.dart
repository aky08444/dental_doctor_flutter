import 'package:doctor_app/providers/appointments_provider.dart';
import 'package:doctor_app/widgets/profile/avtaar.dart';
import 'package:doctor_app/widgets/profile/user_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class WindowsProfilePage extends StatelessWidget {
  const WindowsProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: ColoredBox(
        color: const Color.fromARGB(255, 175, 217, 241),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Expanded(flex: 2, child: Avtaar()),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: UserDetails(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color.fromARGB(255, 175, 217, 241),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                     
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FittedBox(
                                      child: const Text(
                                        "Your Appointments ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView.builder(
                                      itemCount: context
                                          .watch<AppointmentsProvider>()
                                          .appointments
                                          .length,
                                      itemBuilder: (context, index) {
                                        return SizedBox(
                                          width: 40,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                context
                                                    .watch<
                                                      AppointmentsProvider
                                                    >()
                                                    .appointments[index]["patientname"],
                                              ),
                                              Text(
                                                context
                                                    .watch<
                                                      AppointmentsProvider
                                                    >()
                                                    .appointments[index]["phone"],
                                              ),
                                              Text(
                                                context
                                                    .watch<
                                                      AppointmentsProvider
                                                    >()
                                                    .appointments[index]["address"],
                                              ),
                                              Text(
                                                context
                                                    .watch<
                                                      AppointmentsProvider
                                                    >()
                                                    .appointments[index]["status"],
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
