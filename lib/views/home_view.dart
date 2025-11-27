import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/note_list_view.dart';
import 'package:note_app/widgets/add_note_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(text: "Notes", icon: Icons.pending_actions),
            NoteListView(),
          ],
        ),
      ),
      floatingActionButton: AddNoteButton(),
    );
  }
}
