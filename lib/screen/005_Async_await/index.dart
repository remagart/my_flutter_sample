import 'package:flutter/material.dart';

class asyncawaitIndex extends StatelessWidget {
  String barName = "";
  asyncawaitIndex({Key? key, this.barName = "Practice"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice of flutter"),
      ),
      body: Text('aaa'),
    );
  }
}
