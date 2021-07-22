import 'package:flutter/material.dart';
import './global.dart' as global;
import 'main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Container(
            child: Text("You are in 2nd Screen"),
          ),
          SizedBox(
            width: 300,
            child: TextField(
              onChanged: (value) {
                global.name = value;
              },
              decoration:
                  InputDecoration(hintText: "Please update your name here"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyHomePage(title: 'Flutter Demo Home Page');
                }));
              },
              child: Text("First screen")),
        ],
      )),
    );
  }
}
