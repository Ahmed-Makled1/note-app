import 'package:hive_flutter/hive_flutter.dart';

class Note extends HiveObject {
  final String title;
  final String descrition;
  final String date;
  final int color;

  Note({
    required this.title,
    required this.descrition,
    required this.date,
    required this.color,
  });
}
