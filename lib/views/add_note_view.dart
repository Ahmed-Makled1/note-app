import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model/note.dart';
import 'package:note_app/widgets/custom_botton.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class AddNoteView extends StatefulWidget {
  const AddNoteView({super.key});
  final List<int> noteColors = const [
    0xFFFFC107, // Amber
    0xFF2196F3, // Blue
    0xFF4CAF50, // Green
    0xFFFF5722, // Deep Orange
    0xFF9C27B0, // Purple
    0xFF00BCD4, // Cyan
    0xFFFFEB3B, // Yellow
    0xFF795548, // Brown
  ];

  @override
  State<AddNoteView> createState() => _AddNoteViewState();
}

class _AddNoteViewState extends State<AddNoteView> {
  int getRandomColor(colors) {
    final random = Random();
    return colors[random.nextInt(colors.length)];
  }

  final _formKey = GlobalKey<FormState>();

  String title = "", descrition = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomTextFormField(
              text: "Title",
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              text: "Descrition",
              maxLines: 3,
              onChanged: (value) {
                descrition = value;
              },
            ),
            SizedBox(height: 16),
            CustomButtom(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  var noteBox = Hive.box(kNoteBox);
                  Note newNote = Note(
                    title: title,
                    descrition: descrition,
                    date:
                        "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}",
                    color: getRandomColor(widget.noteColors),
                  );
                  noteBox.add(newNote);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
