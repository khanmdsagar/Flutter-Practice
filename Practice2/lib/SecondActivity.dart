import 'package:flutter/material.dart';

class SecondActivity extends StatefulWidget {

  @override
  State<SecondActivity> createState() => _SecondActivityState();
}

class _SecondActivityState extends State<SecondActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Second Activity"),
      ),
    );
  }
}
