import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: Hive.box(kNoteBox).listenable(),
        builder: (context, value, child) {
          var noteList = value.values.toList();
          return ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: noteList.length,
            itemBuilder: (context, index) {
              return NoteItem(note: noteList[index]);
            },
          );
        },
      ),
    );
  }
}
