import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/model/home_model.dart';

class TaskDialog extends StatefulWidget{
  final BuildContext ctx;
  final void Function(HomeModel homeModel) addNewTask;
  const TaskDialog(this.ctx,this.addNewTask,{super.key});

  @override
  State<StatefulWidget> createState() {
    return _TaskDialog();
  }
}

class _TaskDialog extends State<TaskDialog>{
  final _textController = TextEditingController();

  void newTask(){
    if(_textController.text.trim().isEmpty){
      ScaffoldMessenger.of(context).showSnackBar( 
        const SnackBar( 
          content: Text("Invalid data entry!"),
          duration: Duration(seconds: 7),
          behavior: SnackBarBehavior.floating,
        )
      );
    }
    else{
      widget.addNewTask(HomeModel(title: _textController.text));
    }
  }

  @override
  void dispose(){
    super.dispose();
    _textController.dispose();
  }
  
  @override
  Widget build(context) {
    return AlertDialog( 
      title: const Text("New Task"),
      actions: [ 
        SizedBox( 
          child: Column( 
            children: [ 
              TextField( 
                controller: _textController,
                decoration: const InputDecoration( 
                  labelText: "Task title",
                  border: OutlineInputBorder()
                ),
              ),
            ],
          ),
        ),
        FilledButton( 
          onPressed: (){
            newTask();
            Navigator.of(context).pop();
          },  
          child: const Text("Save") 
          ),
        FilledButton( 
          onPressed: (){
            Navigator.of(widget.ctx).pop();
          },  
          child: const Text("Cancel") 
          )
      ],
    );
  }
}