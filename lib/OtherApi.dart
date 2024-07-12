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
  String _data = " ";
  var type;
  fetchdata() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$type');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        _data = response.body;
      });
    }
  }

  /* @override
  void initState() {
    super.initState();
    fetchdata();
  }*/

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
              TextFormField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  if (value != null) {
                    type = value;
                  }
                },
              ),
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
              Expanded(child: SingleChildScrollView(child: Text(_data)))
            ],
          ),
        ),
      ),
    );
  }
}
