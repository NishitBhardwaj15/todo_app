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
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor:const Color.fromARGB(255, 234, 210, 239),
      appBar: AppBar( 
        toolbarHeight: 80,
        title: const Center( 
          child: Text("Tasks"),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple.shade600
      ),
      body: HomeBody(listTasks),
      floatingActionButton: FloatingActionButton( 
        onPressed: (){ 
          showDialog(
            context: context, 
            builder: (ctx){
              return TaskDialog(ctx,addNewTask);
            } 
          );
        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple.shade600,
        shape: const CircleBorder(),
        child: const Icon(Icons.add)
      ),
    );
  }
  
}