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
      backgroundColor:const Color.fromARGB(255, 234, 210, 239),
      appBar: AppBar( 
        title: const Center( 
          child: Text("Tasks"),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple.shade600
      ),
      body: const Text("body"),
      floatingActionButton: FloatingActionButton.large( 
        onPressed: (){},
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple.shade600,
        shape: const CircleBorder(),
        child: const Icon(Icons.add)
        
      ),
    );
  }
  
}