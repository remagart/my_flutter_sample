import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  int num = 0;
  page3({Key? key, this.num = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page3'),
      ),
      body: Column(
        children: [
          Text(num.toString()),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 100);
              },
              child: const Text('return 100')),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 200);
              },
              child: const Text('return 200'))
        ],
      ),
    );
  }
}
