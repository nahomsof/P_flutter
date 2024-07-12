import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  fetchdata() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("Data fetched succussfully: ${response.body}");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HTTP Requiest in Flutter"),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        fetchdata();
                      },
                      child: Text("Fetch Data")),
                  ElevatedButton(onPressed: () {}, child: Text("Create Data")),
                  ElevatedButton(onPressed: () {}, child: Text("Delete Data"))
                ],
              ),
              Expanded(child: SingleChildScrollView(child: Text("Some data")))
            ],
          ),
        ),
      ),
    );
  }
}
