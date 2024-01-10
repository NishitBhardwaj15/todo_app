import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home_card.dart';

class HomeBody extends StatelessWidget{
  final List listTasks;
  const HomeBody(this.listTasks,{super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 700,
      width: double.infinity,
      child: ListView.builder(
        itemCount: listTasks.length,
        itemBuilder:(constext,index){ 
          return HomeCard(listTasks[index]);
        }
      ),
    );
  }
}