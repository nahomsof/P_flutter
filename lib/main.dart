import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body:
       Center(
        C2AF
        
          
       
           child: Container(
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 100),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: Column(children: [Container(
                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                 decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(20)),
                 child: Text(
            "Goo",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                 ),
               ),
               Container(
                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                 decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(20)),
                 child: Text(
            "Some thing",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                 ),
               ),Container(
                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                 decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                 child: Text(
            "For good thing",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                 ),
               ),Container(
                 padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                 decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                 child: Text(
            "Thats good",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                 ),
               ),],),
                 ),
         ),
      )
    );
  }
}