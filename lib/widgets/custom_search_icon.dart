import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon , required this.onPressedicon});
  final IconData icon;
  final void Function() onPressedicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(icon: Icon(icon), onPressed: onPressedicon),
    );
  }
}
