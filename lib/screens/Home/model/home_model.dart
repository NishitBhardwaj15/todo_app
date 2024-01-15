import 'package:uuid/uuid.dart';

const uuid = Uuid();

class HomeModel {
  final String title;
  bool isSelected = false;

  HomeModel({ 
    required this.title,
  });
}