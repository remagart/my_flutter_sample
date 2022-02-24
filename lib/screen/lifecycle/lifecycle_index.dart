import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class lifecycle_index extends StatefulWidget {
  lifecycle_index({Key? key}) : super(key: key);

  @override
  State<lifecycle_index> createState() {
    log("create state");
    Fluttertoast.showToast(msg: "create state");
    return _lifecycle_indexState();
  }
}

class _lifecycle_indexState extends State<lifecycle_index> {
  int _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    log("init state");
    Fluttertoast.showToast(msg: "init state");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    log("didChangeDependencies");
    Fluttertoast.showToast(msg: "didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant lifecycle_index oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    log("didUpdateWidget");
    Fluttertoast.showToast(msg: "didUpdateWidget");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    log("reassemble");
    Fluttertoast.showToast(msg: "reassemble");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();

    log("deactivate");
    Fluttertoast.showToast(msg: "deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    log("dispose");
    Fluttertoast.showToast(msg: "dispose");
  }

  @override
  Widget build(BuildContext context) {
    log("build");
    Fluttertoast.showToast(msg: "build");

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
              child: const Text("到下一頁")),
          Text("現在的數字為 $_counter "),
          ElevatedButton(onPressed: _increaseCounter, child: const Text("+1")),
          childrenWidget(),
        ],
      ),
    );
  }
}

class childrenWidget extends StatefulWidget {
  childrenWidget({Key? key}) : super(key: key);

  @override
  State<childrenWidget> createState() {
    log("(3) createState");
    Fluttertoast.showToast(msg: "(3) createState");
    return _childrenWidgetState();
  }
}

class _childrenWidgetState extends State<childrenWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log("(3) init");
    Fluttertoast.showToast(msg: "(3) init");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    log("(3) didChangeDependencies");
    Fluttertoast.showToast(msg: "(3) didChangeDependencies");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    log("(3) reassemble");
    Fluttertoast.showToast(msg: "(3) reassemble");
  }

  @override
  void didUpdateWidget(covariant childrenWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    log("(3) didUpdateWidget");
    Fluttertoast.showToast(msg: "(3) didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    log("(3) deactivate");
    Fluttertoast.showToast(msg: "(3) deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    log("(3) dispose");
    Fluttertoast.showToast(msg: "(3) dispose");
  }

  @override
  Widget build(BuildContext context) {
    log("(3) build");
    Fluttertoast.showToast(msg: "(3) build");
    return Text("I am Children widget");
  }
}
