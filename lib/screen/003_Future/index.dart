import 'package:flutter/material.dart';

class futureIndex extends StatelessWidget {
  String barName = "";
  futureIndex({Key? key, this.barName = "Practice"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(barName),
      ),
      body: Text('aaa'),
    );
  }
}
