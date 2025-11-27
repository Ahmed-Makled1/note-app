import 'package:hive_flutter/hive_flutter.dart';

class Note extends HiveObject {
  String title;
  String descrition;
  String date;
  int color;

  Note({
    required this.title,
    required this.descrition,
    required this.date,
    required this.color,
  });
}
