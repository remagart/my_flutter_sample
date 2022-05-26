import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_flutter_sample/screen/003_Future/index.dart';
import 'package:my_flutter_sample/screen/004_Stream/index.dart';
import 'package:my_flutter_sample/screen/005_Async_await/index.dart';
import 'package:my_flutter_sample/screen/006_isolate_event_loop/index.dart';
import 'package:my_flutter_sample/screen/lifecycle/lifecycle_index.dart';
import 'package:my_flutter_sample/screen/practice_navigation/practice_navigation_index.dart';

class homepage extends StatelessWidget {
  homepage({Key? key}) : super(key: key);

  List<String> titleList = [
    "Practice Navigation",
    "Practice lifecycle of StatefulWidget",
    "inherit??",
    "Future",
    "Stream",
    "Async and await",
    "isolate and event loop",
  ];

  static get title => null;

  static get subTitle => null;

  ListTile renderRow(context, title, subtitle, Widget navPage) {
    return ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          // Navigator.pushNamed(context, navPage);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navPage));

          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => futureIndex(barName: title)));
        });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      renderRow(context, titleList[0], "To know how to use navigation",
          practice_navigation_index(barName: titleList[0])),
      renderRow(context, titleList[1], "To know all the time in each lifecycle",
          lifecycle_index(barName: titleList[1])),
      renderRow(context, titleList[3], "To know how to use future",
          futureIndex(barName: titleList[3])),
      renderRow(context, titleList[4], "To know how to use Stream",
          streamIndex(barName: titleList[4])),
      renderRow(context, titleList[5], "To know how to use Async and await",
          asyncawaitIndex(barName: titleList[5])),
      renderRow(context, titleList[6], "To know how to use isolate",
          isolateIndex(barName: titleList[6])),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Practice of flutter"),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // height: 50,
              color: Colors.amber[(index + 1) * 100],
              child: Center(child: list[index]),
            );
          }),
    );
  }
}
