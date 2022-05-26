import 'package:flutter/material.dart';

class practice_navigation_index extends StatelessWidget {
  String barName = "";
  practice_navigation_index({Key? key, this.barName = "Practice"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 64),
            const Text(
              "1. navigate to page1 練習不同頁面傳送資料 和 回傳",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 16),
            const Text(
              "2. navigate to page2 練習導向到另外一頁",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            Row(
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
            )
          ],
        ));
  }
}
