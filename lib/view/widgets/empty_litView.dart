import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 80),
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 80,
          child: Icon(
            Icons.person_2_rounded,
            size: 100,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Enter your contact information',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
