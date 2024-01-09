import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar( 
        title: const Center( 
          child: Text("Tasks"),
        ),
        elevation: 0,
        backgroundColor: Colors.yellow
      ),
      body: const Text("body"),
      floatingActionButton: FloatingActionButton( 
        onPressed: (){},
        foregroundColor: Colors.black,
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add),
      ),
    );
  }
  
}