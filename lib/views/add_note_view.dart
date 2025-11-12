import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_botton.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomTextFormField(text: "Title"),
          SizedBox(height: 16),
          CustomTextFormField(text: "Content", maxLines: 3),
          SizedBox(height: 16),
          CustomButtom(),
        ],
      ),
    );
  }
}
