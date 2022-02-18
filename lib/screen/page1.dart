import 'dart:developer';

import 'package:flutter/material.dart';
import './page3.dart';

import 'package:fluttertoast/fluttertoast.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _nav(par) async {
      var result = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => page3(
                    num: par,
                  )));
      log(result.toString());
      Fluttertoast.showToast(msg: result.toString());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('page1'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  _nav(5);
                },
                child: const Text('push page3 (5)')),
            ElevatedButton(
                onPressed: () {
                  _nav(10);
                },
                child: const Text('push page3 (10)'))
          ],
        ),
      ),
    );
  }
}
