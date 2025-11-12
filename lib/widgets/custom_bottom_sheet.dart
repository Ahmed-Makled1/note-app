import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomTextFormField(text: "Title"),
          SizedBox(height: 30),
          CustomTextFormField(text: "Content", maxLines: 3),
        ],
      ),
    );
  }
}
