import 'package:flutter/material.dart';

class AppointmentsItemsContainer extends StatelessWidget {
  const AppointmentsItemsContainer({
    super.key,
    required this.heading,
    required this.value,
  });
  final String heading;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: FittedBox(
              child: Text(
                heading,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
