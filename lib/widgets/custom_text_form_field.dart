import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.maxLines, required this.text});
  final int? maxLines;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hint: Text(text, style: TextStyle(color: kprimaryColor)),
        border: inputBorderDecoration(),
        enabledBorder: inputBorderDecoration(),
        focusedBorder: inputBorderDecoration(kprimaryColor),
      ),
    );
  }

  OutlineInputBorder inputBorderDecoration([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
