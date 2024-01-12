import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home_body.dart';
import 'package:todo_app/screens/home/task_dialog.dart';
import 'package:todo_app/data/home_data.dart';
import 'package:todo_app/screens/home/model/home_model.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home>{
  final listTasks = List.of(tasks);

  void addNewTask(HomeModel homeModel){
    setState(() {
      listTasks.add(homeModel);
    });
  }

  @override
  Widget build(context) {
    return Scaffold( 
      backgroundColor: Colors.yellow[100],
      appBar: AppBar( 
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center( 
          child: Text("TO DO"),
        ),
        elevation: 0
      ),
      body: HomeBody(listTasks),
      floatingActionButton: FloatingActionButton( 
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: (){ 
          showDialog(
            context: context, 
            builder: (ctx){
              return TaskDialog(ctx,addNewTask);
            } 
          );
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add)
      ),
    );
  }
  
}