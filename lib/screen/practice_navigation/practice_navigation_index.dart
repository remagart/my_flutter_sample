import 'package:flutter/material.dart';

class practice_navigation_index extends StatelessWidget {
  const practice_navigation_index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page1');
                },
                child: const Text('navigate to page1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page2');
                },
                child: const Text('navigate to page2'))
          ],
        ));
  }
}
