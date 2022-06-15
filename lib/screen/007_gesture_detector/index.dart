import 'package:flutter/material.dart';

class GestureDetectorIndex extends StatelessWidget {
  const GestureDetectorIndex({Key? key, required this.barName})
      : super(key: key);
  final String barName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(barName)),
      body: Container(
        child: Column(
          children: [
            Text("aaa"),
            Text("bbb"),
          ],
        ),
      ),
    );
  }
}
