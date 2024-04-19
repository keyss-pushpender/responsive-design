import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300.0,
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Enter Something',
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder()
          ),
        ),
      )
    );
  }
}
