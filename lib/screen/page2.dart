import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page2'),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page5');
          },
          child: Text('to page5')),
    );
  }
}
