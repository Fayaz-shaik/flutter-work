import 'package:flutter/material.dart';

class HourlyWidget extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;
  const HourlyWidget(
    {
      super.key,
      required this.time,
      required this.icon,
      required this.temperature,
    }
    
    );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: 120,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              temperature,
              style: const TextStyle(
                fontSize: 20,
                //fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
