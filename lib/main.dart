import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home.dart';

void main(){
  
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