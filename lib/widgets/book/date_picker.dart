
import 'package:doctor_app/core/theme/typography_scope.dart';
import 'package:doctor_app/utils/datepicker_items_container.dart';
import 'package:doctor_app/validate/appointment_validate.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  List<String> dateRange = [
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "01",
    "02",
    "03",
    "04",
  ];
  final services = AppointmentValidate();
  String selectedDate = "12";
  late String displayName;
  void sendData(String date) {
    services.date(selectedDate);
  }

  String formattedToday = DateFormat('yyyy-MM-dd').format(DateTime.now());

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
        padding: const EdgeInsets.symmetric(vertical : 8.0 , horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
                "CHOOSE DATE",
                style: Typographydata.of(context).typography.cardTitle
              ),
            
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DatepickerItemsContainer(
                          value: "M",
                          color: Colors.blue[600],
                        ),
                      
                      DatepickerItemsContainer(
                          value: "Tu",
                          color: Colors.blue[600],
                        ),
                      
                       DatepickerItemsContainer(
                          value: "W",
                          color: Colors.blue[600],
                        ),
                      
                       DatepickerItemsContainer(
                          value: "Th",
                          color: Colors.blue[600],
                        ),
                      
                       DatepickerItemsContainer(
                          value: "Fr",
                          color: Colors.blue[600],
                        ),
                      
                      DatepickerItemsContainer(
                          value: "Sa",
                          color: Colors.blue[600],
                        
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[0];
                              sendData(dateRange[0]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: selectedDate,
                            color: dateRange[0] == selectedDate
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[1];
                              sendData(dateRange[1]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[1],
                            color: selectedDate == dateRange[1]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[2];
                              sendData(dateRange[2]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[2],
                            color: selectedDate == dateRange[2]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[3];
                              sendData(dateRange[3]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[3],
                            color: selectedDate == dateRange[3]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[4];
                              sendData(dateRange[4]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[4],
                            color: selectedDate == dateRange[4]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[5];
                              sendData(dateRange[5]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[5],
                            color: selectedDate == dateRange[5]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[6];
                              sendData(dateRange[6]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[6],
                            color: selectedDate == dateRange[6]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[7];
                              sendData(dateRange[7]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[7],
                            color: selectedDate == dateRange[7]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[8];
                              sendData(dateRange[8]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[8],
                            color: selectedDate == dateRange[8]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[9];
                              sendData(dateRange[9]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[9],
                            color: selectedDate == dateRange[9]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[10];
                              sendData(dateRange[10]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[10],
                            color: selectedDate == dateRange[10]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
                          ),
                        
                      ),
                       InkWell(
                          onTap: () {
                            setState(() {
                              selectedDate = dateRange[11];
                              sendData(dateRange[11]);
                            });
                          },
                          child: DatepickerItemsContainer(
                            value: dateRange[11],
                            color: selectedDate == dateRange[11]
                                ? const Color(0xFFF57F17)
                                : Colors.blue[100],
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
