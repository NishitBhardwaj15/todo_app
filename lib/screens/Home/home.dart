import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home_body.dart';
import 'package:todo_app/screens/home/task_dialog.dart';
import 'package:todo_app/data/home_data.dart';
import 'package:todo_app/screens/home/model/home_model.dart';
import 'package:hive/hive.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home>{
  List<dynamic> taskList = [];

  @override
  void initState(){
    super.initState();
    initialzeList();
  }

  void initialzeList(){
    Box box = Hive.box("taskBox");

    if(box.containsKey("list")){
      taskList = List.of(HomeData().updateList(box));
    }
    else{
      HomeData().loadList(box);
      print(box.path);
    }

  }

  // final listTasks = List.of(tasks);

  void addNewTask(HomeModel homeModel){
    setState(() {
      taskList.add(homeModel);
    });
  }

  void removeTask(HomeModel homeModel){
    final index = taskList.indexOf(homeModel);

    setState(() {
      taskList.remove(homeModel);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar( 
      SnackBar( 
        duration: const Duration(seconds: 6),
        content: const Text("Task deleted"),
        action: SnackBarAction( 
          label: "Undo", 
          onPressed: (){ 
            setState(() {
              taskList.insert(index, homeModel);
            });
          } 
          ),
      )
    );
  }

  void checkboxHandler(HomeModel homeModel,bool? value){
    setState(() {
      homeModel.isSelected = value!;
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
      body: HomeBody(taskList,removeTask,checkboxHandler),
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