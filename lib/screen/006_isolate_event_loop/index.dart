import 'package:flutter/material.dart';
import 'dart:isolate';
import '../../isolateHelper/myisolate.dart';

class isolateIndex extends StatefulWidget {
  String barName = "";
  isolateIndex({Key? key, this.barName = "Practice"}) : super(key: key);

  @override
  State<isolateIndex> createState() => _isolateIndexState(barName: barName);
}

class _isolateIndexState extends State<isolateIndex> {
  String mybarName = "222";
  _isolateIndexState({required String barName}) {
    mybarName = barName;
  }

  void foo(SendPort sendPort) {
    sendPort.send("Hello lqr");
  }

  void runMyIsolate() {
    main1();
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    runMyIsolate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mybarName),
      ),
      body: Text('aaa'),
    );
  }
}
