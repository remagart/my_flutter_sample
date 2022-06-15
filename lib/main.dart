import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_flutter_sample/screen/003_Future/index.dart';
import 'package:my_flutter_sample/screen/004_Stream/index.dart';
import 'package:my_flutter_sample/screen/005_Async_await/index.dart';
import 'package:my_flutter_sample/screen/006_isolate_event_loop/index.dart';
import 'package:my_flutter_sample/screen/007_gesture_detector/index.dart';
import './screen/page1.dart';
import './screen/page2.dart';
import './screen/page3.dart';
import './screen/page4.dart';
import './screen/page5.dart';
import './screen/welcomepage.dart';
import './screen/homepage.dart';
import './screen/practice_navigation/practice_navigation_index.dart';
import './screen/lifecycle/lifecycle_index.dart';
import './screen/lifecycle/lifecycle_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
      routes: {
        '/page1': (context) => const page1(),
        '/page2': (context) => const page2(),
        '/page3': (context) => page3(),
        '/page4': (context) => const page4(),
        '/welcomepage': (context) => welcomepage(),
        '/homepage': (context) => homepage(),
        '/practice_navigation_index': (context) => practice_navigation_index(),
        '/lifecycle_index': (context) => lifecycle_index(),
        '/lifecycle_page2': (context) => lifecycle_page2(),
        '/futureIndex': ((context) => futureIndex()),
        '/streamIndex': (context) => streamIndex(),
        '/asyncawaitIndex': (context) => asyncawaitIndex(),
        '/isolateIndex': (context) => isolateIndex(),
        '/GestureDetectorIndex': (context) => const GestureDetectorIndex(
              barName: '',
            )
      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/page5':
            log('Already to page5');
            return MaterialPageRoute(builder: (context) => const page5());
        }
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return welcomepage();
  }
}
