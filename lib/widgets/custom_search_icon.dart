import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(57, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.search, size: 30),
    );
  }
}
