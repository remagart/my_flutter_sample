import 'package:flutter/material.dart';

class futureIndex extends StatelessWidget {
  String barName = "";
  futureIndex({Key? key, this.barName = "Practice"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(barName),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 100, right: 100),
            width: 200,
            height: 200,
            child: FittedBox(
              fit: BoxFit.contain,
              child: FutureBuilder<String>(
                future: Future.delayed(
                    Duration(seconds: 3), () => 'I\'m the final data'),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text("Error!");
                  } else if (snapshot.hasData) {
                    // See whether need json.decode
                    return Text(snapshot.data ?? "No data");
                  } else {
                    return Text("Wait 3 seconds...");
                  }
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 100, right: 100),
            width: 200,
            height: 200,
            child: FittedBox(
              fit: BoxFit.contain,
              child: FutureBuilder<String>(
                future: Future.delayed(
                    Duration(seconds: 3), () => throw Exception()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text("Error is occurred!");
                  } else if (snapshot.hasData) {
                    // See whether need json.decode
                    return Text(snapshot.data ?? "No data");
                  } else {
                    return Text("Wait 3 seconds...");
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
