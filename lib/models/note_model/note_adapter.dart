import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model/note.dart';

class NoteTypeAdapter extends TypeAdapter<Note> {
  @override
  int get typeId => 0;

  @override
  Note read(BinaryReader reader) {
    return Note(
      title: reader.readString(),
      descrition: reader.readString(),
      color: reader.readInt(),
    );
  }
  
  @override
  void write(BinaryWriter writer, Note obj) {
    writer.writeString(obj.title);
    writer.writeString(obj.descrition);
    writer.writeInt(obj.color);
  }
}
