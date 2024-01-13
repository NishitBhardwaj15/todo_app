import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home_card.dart';
import 'package:todo_app/screens/home/model/home_model.dart';

class HomeBody extends StatelessWidget{
  final List listTasks;
  final void Function(HomeModel homeModel) removeTask;
  final void Function(HomeModel homeModel,bool? value) checkboxHandler;

  const HomeBody(this.listTasks,this.removeTask,this.checkboxHandler,{super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 680,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 20),
        child: listTasks.isEmpty? const Center( 
          child: Text("No new task"),
        ): 
        ListView.builder(
          itemCount: listTasks.length,
          itemBuilder:(constext,index){ 
            return Dismissible( 
              background: Container( 
                color: Colors.red,
                child: const Icon( 
                  Icons.delete_forever_rounded,
                  size: 40, 
                  color: Colors.white,),
              ),
              key: ValueKey(listTasks[index]),
              onDismissed: (DismissDirection direction) {
                removeTask(listTasks[index]);
              },
              child: HomeCard(listTasks[index],checkboxHandler) 
              );
          }
        ),
      ),
    );
  }
}