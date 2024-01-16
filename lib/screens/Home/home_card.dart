import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/model/home_model.dart';

class HomeCard extends StatelessWidget{
  final HomeModel task;
  final void Function(HomeModel homeModel,bool? value) checkboxHandler;
  const HomeCard(this.task,this.checkboxHandler,{super.key});

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
        padding: const EdgeInsets.all(10),
        child: Row( 
          children: [ 
            Checkbox( 
              value: task.isSelected, 
              activeColor: Colors.black,
              onChanged: (newValue){
                checkboxHandler(task,newValue);
                } 
              ),
            const SizedBox(width: 20),
            Text( 
              task.title,
              style: TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decoration: task.isSelected? TextDecoration.lineThrough:TextDecoration.none,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: 3
              ), 
              )
          ],
        ),
      )
    );
  }
}