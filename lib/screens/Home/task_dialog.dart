import 'package:flutter/material.dart';

class TaskDialog extends StatefulWidget{
  final BuildContext ctx;
  const TaskDialog(this.ctx,{super.key});

  @override
  State<StatefulWidget> createState() {
    return _TaskDialog();
  }
}

class _TaskDialog extends State<TaskDialog>{
  
  @override
  Widget build(context) {
    return AlertDialog( 
      title: const Text("New Task"),
      actions: [ 
        const SizedBox( 
          child: Column( 
            children: [ 
              TextField( 
                decoration: InputDecoration( 
                  labelText: "Task title",
                  border: OutlineInputBorder()
                ),
              )
            ],
          ),
        ),
        FilledButton( 
          onPressed: (){},  
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