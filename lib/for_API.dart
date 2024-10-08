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
  var typeid;

  getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/$typeid');
    http.Response response = await http.get(url);

    //print(response.statusCode);
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      setState(() {
        this.userId = result['userId'];
        this.title = result['title'];
        this.completed = result['completed'];
      });
    } else {
      print('Error fetching the data');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch data from internet"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Enter Id"),
                onChanged: (value) {
                  if (value != null) {
                    typeid = value;
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  getData();
                },
                child: Text("Get User Data")),
            Container(
              child: Text(
                "UserID is $userId",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                "Title of task is $title",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(
                "Task Status is $completed",
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
