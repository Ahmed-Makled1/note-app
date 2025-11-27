
import 'package:hive_flutter/hive_flutter.dart';

class Note extends HiveObject{
  final String title;
  final String descrition;
  final int color;

  Note({required this.title, required this.descrition, required this.color});
}
