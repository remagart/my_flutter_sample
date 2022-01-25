import 'dart:developer';

import 'package:flutter/material.dart';

class welcomepage extends StatefulWidget {
  welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/homepage', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.flutter_dash_outlined,
              size: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Welcome to my Sample Flutter",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  decoration: TextDecoration.none),
            ),
            Text(
              "Please wait...",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  decoration: TextDecoration.none),
            )
          ],
        ));
  }
}
