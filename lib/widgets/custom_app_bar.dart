import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    required this.icon,
    this.onPressedicon,
  });
  final String text;
  final IconData icon;
  final void Function()? onPressedicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 24)),
          CustomSearchIcon(icon: icon, onPressedicon: onPressedicon ?? () {}),
        ],
      ),
    );
  }
}
