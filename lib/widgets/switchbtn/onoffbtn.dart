import 'package:flutter/material.dart';

class OnOffSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const OnOffSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 40,
        height: 20,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: value ?  Colors.green[900] : Colors.grey.shade400,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            // ON text
            if (value)
              const Positioned(
                left: 11,
                top: 8,
                child: Text(
                  'ON',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            // Circle
            AnimatedAlign(
              duration: const Duration(milliseconds: 200),
              alignment:
                  value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 14,
                height: 14,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}