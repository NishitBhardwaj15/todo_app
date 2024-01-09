import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat().add_yMd();

class HomeModel {
  final String id;
  final String title;
  final DateTime date;
  bool isSelected = false;

  HomeModel({ 
    required this.title,
    required this.date
  }) : id = uuid.v4();

  String get formattedDate{
    return formatter.format(date);
  }
}