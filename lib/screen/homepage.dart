import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      ListTile(
        title: const Text("Practice Navigation"),
        subtitle: const Text("To know how to use navigation in flutter"),
        onTap: () {
          Navigator.pushNamed(context, "/practice_navigation_index");
        },
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
