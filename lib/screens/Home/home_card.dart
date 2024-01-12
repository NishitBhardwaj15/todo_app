import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/model/home_model.dart';

class HomeCard extends StatelessWidget{
  final HomeModel task;
  const HomeCard(this.task,{super.key});
  @override
  Widget build(BuildContext context) {
    return Card( 
      margin: const EdgeInsets.symmetric( 
        horizontal: 30,
        vertical: 10
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
        color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row( 
        children: [ 
          const Text("checkbox"),
          Column( 
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [ 
              Text(task.title)
            ],
          )
        ],
      )
    );
  }
}