import 'package:flutter/material.dart';
import 'package:note_app/models/note_model/note.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final Note note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: note);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  note.descrition,
                  style: TextStyle(
                    color: const Color.fromARGB(120, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: Transform.translate(
                offset: Offset(0, -20),
                child: IconButton(
                  onPressed: () async {
                    await note.delete();
                  },
                  icon: Icon(Icons.delete, size: 30),
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                note.date,
                style: TextStyle(
                  color: const Color.fromARGB(120, 0, 0, 0),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
