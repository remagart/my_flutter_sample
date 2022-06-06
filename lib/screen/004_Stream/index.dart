import 'dart:async';

import 'package:flutter/material.dart';

class NumberCreator {
  var _count = 1;
  final _controller = StreamController<int>();

  NumberCreator() {
    Timer.periodic(Duration(seconds: 1), (t) {
      if (_count == 3) {
        _controller.addError("this is error");
        _count++;
      }
      _controller.sink.add(_count);
      _count++;
    });
  }

  Stream<int> get stream => _controller.stream;
}

class streamIndex extends StatelessWidget {
  String barName = "";
  streamIndex({Key? key, this.barName = "Practice"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice of flutter"),
      ),
      body: Container(
        margin: EdgeInsets.all(100),
        width: 200,
        height: 200,
        child: FittedBox(
          fit: BoxFit.contain,
          child: StreamBuilder<String>(
            stream: NumberCreator().stream.map((i) => 'String $i').take(5),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("No data yet!");
              } else if (snapshot.connectionState == ConnectionState.done) {
                return Text("Done!");
              } else if (snapshot.hasError) {
                return Text("Error!");
              } else {
                return Text(snapshot.data ?? "");
              }
            },
          ),
        ),
      ),
    );
  }
}
