import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/model/home_model.dart';

class HomeCard extends StatelessWidget{
  final HomeModel task;
  const HomeCard(this.task,{super.key});

  @override
  Widget build(BuildContext context) {
    return Card( 
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.symmetric( 
        horizontal: 30,
        vertical: 20
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
        color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Row( 
          children: [ 
            // Checkbox( 
            //   value: task.isSelected,  
            //   onChanged:(bool? value){
            //     checkboxHandler(task, value);
            //   },
            //   activeColor: Colors.black,
            //   ),
            const Text("checkbox"),
            const SizedBox(width: 20),
            Text( 
              task.title,
              style: const TextStyle( 
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ), 
              )
          ],
        ),
      )
    );
  }
}