import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model/note.dart';
import 'package:note_app/widgets/custom_botton.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class AddNoteView extends StatefulWidget {
  AddNoteView({super.key});

  @override
  State<AddNoteView> createState() => _AddNoteViewState();
}

class _AddNoteViewState extends State<AddNoteView> {
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
                    date: "${DateTime.now()}",
                    color: 12,
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
