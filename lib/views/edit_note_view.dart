import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(text: "Edit Note", icon: Icons.check),
            CustomTextFormField(text: "Title"),
            SizedBox(height: 16),
            CustomTextFormField(text: "Content", maxLines: 5),
          ],
        ),
      ),
    );
  }
}
