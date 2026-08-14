import 'package:doctor_app/utils/timepicker_items_container.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  List<String> timeSlots = [
    "9:00 AM",
    "10:30 AM",
    "11:30 AM",
    "1:30 AM",
    "2:30 AM",
    "3:30 AM",
    "4:30 AM",
    "5:30 AM",
    "6:30 AM",
  ];
  String selectedSlot = "0";

  void sendTime(String time) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.grey
        )
      ),

      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0 , bottom: 8),
              child: Text(
                "CHOOSE DATE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[600],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TimepickerItemsContainer(
                          value: "Morning",
                          color: Colors.blue[600],
                        ),
                      ),

                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[0];
                            setState(() {
                              sendTime(timeSlots[0]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[0],
                            color: selectedSlot == timeSlots[0]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[1];
                            setState(() {
                              sendTime(timeSlots[1]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[1],
                            color: selectedSlot == timeSlots[1]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[2];
                            setState(() {
                              sendTime(timeSlots[2]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[2],
                            color: selectedSlot == timeSlots[2]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: TimepickerItemsContainer(
                          value: "Afternoon",
                          color: Colors.blue[600],
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[3];
                            setState(() {
                              sendTime(timeSlots[3]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[3],
                            color: selectedSlot == timeSlots[3]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[4];
                            setState(() {
                              sendTime(timeSlots[4]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[4],
                            color: selectedSlot == timeSlots[4]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[5];
                            setState(() {
                              sendTime(timeSlots[5]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[5],
                            color: selectedSlot == timeSlots[5]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: TimepickerItemsContainer(
                          value: "Evening",
                          color:  Colors.blue[600],
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[6];
                            setState(() {
                              sendTime(timeSlots[6]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[6],
                            color: selectedSlot == timeSlots[6]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[7];
                            setState(() {
                              sendTime(timeSlots[7]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[7],
                            color: selectedSlot == timeSlots[7]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            selectedSlot = timeSlots[8];
                            setState(() {
                              sendTime(timeSlots[8]);
                            });
                          },
                          child: TimepickerItemsContainer(
                            value: timeSlots[8],
                            color: selectedSlot == timeSlots[8]? const Color(0xFFF57F17) : Colors.blue[100],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
