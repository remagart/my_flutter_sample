import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class lifecycle_index extends StatefulWidget {
  lifecycle_index({Key? key}) : super(key: key);

  @override
  State<lifecycle_index> createState() {
    log("create state");
    return _lifecycle_indexState();
  }
}

class _lifecycle_indexState extends State<lifecycle_index> {
  @override
  void initState() {
    super.initState();
    log("init state");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    log("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant lifecycle_index oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    log("didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();

    log("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    log("dispose");
  }

  @override
  Widget build(BuildContext context) {
    log("build");

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.only(top: 64),
      child: Column(
        children: [
          const Text(
            "This is lifecycle page",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/lifecycle_page2");
              },
              child: const Text("到下一頁"))
        ],
      ),
    );
  }
}
