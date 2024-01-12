import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home_card.dart';

class HomeBody extends StatelessWidget{
  final List listTasks;
  const HomeBody(this.listTasks,{super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 680,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 20),
        child: ListView.builder(
          itemCount: listTasks.length,
          itemBuilder:(constext,index){ 
            return HomeCard(listTasks[index]);
          }
        ),
      ),
    );
  }
}