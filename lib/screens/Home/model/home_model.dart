import 'package:uuid/uuid.dart';

const uuid = Uuid();

class HomeModel {
  final String id;
  final String title;
  bool isSelected = false;

  HomeModel({ 
    required this.title,
  }) : id = uuid.v4();
}