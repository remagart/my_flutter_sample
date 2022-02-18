import 'dart:developer';

import 'package:flutter/material.dart';
import './screen/page1.dart';
import './screen/page2.dart';
import './screen/page3.dart';
import './screen/page4.dart';
import './screen/page5.dart';
import './screen/welcomepage.dart';
import './screen/homepage.dart';
import './screen/practice_navigation/practice_navigation_index.dart';

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
        '/homepage': (context) => const homepage(),
        '/practice_navigation_index': (context) =>
            const practice_navigation_index(),
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
