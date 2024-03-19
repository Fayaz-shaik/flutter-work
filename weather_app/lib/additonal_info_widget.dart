import 'package:flutter/material.dart';

class additional_info_widget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const additional_info_widget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Icon(
            icon,
            size: 32,
          ),
          const SizedBox(height:10),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
            
            ),
            const SizedBox(height:10),
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )
        ],
      );
  }
}