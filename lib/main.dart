import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox("taskBox");

  runApp( 
    MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
       primaryColor: Colors.yellow
        ),
    )
  );
}