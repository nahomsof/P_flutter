import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userId;
  var title;
  var completed;

  getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    http.Response respons = await http.get(url);

    //print(response.statusCode);
    if (respons.statusCode == 200) {
      var result = jsonDecode(respons.body);
      setState(() {
        this.userId = result[userId];
        this.title = result[title];
        this.completed = result[completed];
      });
    } else {
      print('Error fetching the data');
    }
  }
/*
  @override
  void initState() {
    super.initState();
    getData();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetching data from Internet"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Enter ID"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  getData();
                },
                child: Text("Get User data")),
            Container(
              child: Text(
                "User id $userId",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                "title of task $title",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                "Tast status  $completed",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}
