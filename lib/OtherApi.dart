import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Scaffold(
        appBar: AppBar(title: Text("HTTP Requiest in Flutter"),
        ),
        body: Center(child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [    
          ElevatedButton(onPressed: (){}, child: Text("Fetch Data")),
          ElevatedButton(onPressed: (){}, child: Text("Create Data")),
          ElevatedButton(onPressed: (){}, child: Text("Delete Data"))
          ],),
          Expanded(child: SingleChildScrollView(child: Text("")))
        ],),),
      ),
    );
  }
}
