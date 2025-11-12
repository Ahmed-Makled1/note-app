import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        // itemCount: 1,
        itemBuilder: (context, index) {
          return NoteItem();
        },
      ),
    );
  }
}
