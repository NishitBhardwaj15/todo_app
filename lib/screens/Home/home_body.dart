import 'package:flutter/material.dart';
import 'package:todo_app/data/home_data.dart';
import 'package:todo_app/screens/home/home_card.dart';

class HomeBody extends StatelessWidget{
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 660,
      width: double.infinity,
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder:(constext,index){ 
          return HomeCard(tasks[index]);
        }
      ),
    );
  }
}