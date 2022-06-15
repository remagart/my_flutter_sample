import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_flutter_sample/screen/003_Future/index.dart';
import 'package:my_flutter_sample/screen/004_Stream/index.dart';
import 'package:my_flutter_sample/screen/005_Async_await/index.dart';
import 'package:my_flutter_sample/screen/006_isolate_event_loop/index.dart';
import 'package:my_flutter_sample/screen/007_gesture_detector/index.dart';
import 'package:my_flutter_sample/screen/lifecycle/lifecycle_index.dart';
import 'package:my_flutter_sample/screen/practice_navigation/practice_navigation_index.dart';
import 'package:my_flutter_sample/widget/render_homepage_row.dart';

class homepage extends StatelessWidget {
  homepage({Key? key}) : super(key: key);

  List<Map<String, String>> titleList = [
    {
      "title": "Practice Navigation",
      "subTitle": "To know how to use navigation",
    },
    {
      "title": "Practice lifecycle of StatefulWidget",
      "subTitle": "To know all the time in each lifecycle",
    },
    {
      "title": "inherit??",
      "subTitle": "",
    },
    {
      "title": "Future",
      "subTitle": "To know how to use future",
    },
    {
      "title": "Stream",
      "subTitle": "To know how to use Stream",
    },
    {
      "title": "Async and await",
      "subTitle": "To know how to use Async and await",
    },
    {
      "title": "isolate and event loop",
      "subTitle": "To know how to use isolate",
    },
    {
      "title": "widget: GestureDetector",
      "subTitle": "To know how to use GestureDetector",
    }
  ];

  static get title => null;

  static get subTitle => null;

  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      RenderHomepageRowWidget(
        title: titleList[0]["title"] ?? "",
        subtitle: titleList[0]["subTitle"] ?? "",
        navPage:
            practice_navigation_index(barName: titleList[0]["title"] ?? ""),
      ),
      RenderHomepageRowWidget(
        title: titleList[1]["title"] ?? "",
        subtitle: titleList[1]["subTitle"] ?? "",
        navPage: lifecycle_index(barName: titleList[1]["title"] ?? ""),
      ),
      RenderHomepageRowWidget(
        title: titleList[3]["title"] ?? "",
        subtitle: titleList[3]["subTitle"] ?? "",
        navPage: futureIndex(barName: titleList[3]["title"] ?? ""),
      ),
      RenderHomepageRowWidget(
        title: titleList[4]["title"] ?? "",
        subtitle: titleList[4]["subTitle"] ?? "",
        navPage: streamIndex(barName: titleList[4]["title"] ?? ""),
      ),
      RenderHomepageRowWidget(
        title: titleList[5]["title"] ?? "",
        subtitle: titleList[5]["subTitle"] ?? "",
        navPage: asyncawaitIndex(barName: titleList[5]["title"] ?? ""),
      ),
      RenderHomepageRowWidget(
        title: titleList[6]["title"] ?? "",
        subtitle: titleList[6]["subTitle"] ?? "",
        navPage: isolateIndex(barName: titleList[6]["title"] ?? ""),
      ),
      RenderHomepageRowWidget(
        title: titleList[7]["title"] ?? "",
        subtitle: titleList[7]["subTitle"] ?? "",
        navPage: GestureDetectorIndex(barName: titleList[7]["title"] ?? ""),
      ),
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
