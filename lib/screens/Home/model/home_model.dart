import 'package:uuid/uuid.dart';
import 'package:hive/hive.dart';

part 'home_model.g.dart';

const uuid = Uuid();

@HiveType(typeId: 0)
class HomeModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  bool isSelected = false;

  HomeModel({ 
    required this.title,
  }) : id = uuid.v4();
}