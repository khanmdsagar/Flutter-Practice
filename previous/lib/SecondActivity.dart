import 'package:flutter/material.dart';

class SecondActivity extends StatefulWidget {

  String name;
  SecondActivity({this.name});

  @override
  _SecondActivityState createState() => _SecondActivityState();
}

class _SecondActivityState extends State<SecondActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyApp'), centerTitle: true, elevation: 1,),
      body: Center(
        child: Text(widget.name, style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
