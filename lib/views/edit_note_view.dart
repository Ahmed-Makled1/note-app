import 'package:flutter/material.dart';
import 'package:note_app/models/note_model/note.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final Note note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  final _formKey = GlobalKey<FormState>();

  String title = "", descrition = "";

  TextEditingController titlecontroller = TextEditingController();

  TextEditingController descritioncontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    titlecontroller.text = widget.note.title;
    descritioncontroller.text = widget.note.descrition;
  }

  @override
  void dispose() {
    titlecontroller.dispose();
    descritioncontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustomAppBar(
                text: "Edit Note",
                icon: Icons.check,
                onPressedicon: () {
                  widget.note.title = titlecontroller.text;
                  widget.note.descrition = descritioncontroller.text;
                  widget.note.date =
                      "${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}";
                  widget.note.save(); // أهم خطوة
                  Navigator.pop(context);
                },
              ),
              CustomTextFormField(controller: titlecontroller, text: "Title"),
              SizedBox(height: 16),
              CustomTextFormField(
                controller: descritioncontroller,
                text: "Descrition",
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
