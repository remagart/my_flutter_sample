import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class lifecycle_index extends StatefulWidget {
  lifecycle_index({Key? key}) : super(key: key);

  @override
  State<lifecycle_index> createState() {
    Fluttertoast.showToast(msg: "create state");
    return _lifecycle_indexState();
  }
}

class _lifecycle_indexState extends State<lifecycle_index> {
  @override
  void initState() {
    super.initState();
    Fluttertoast.showToast(msg: "init state");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.only(top: 64),
      child: const Text(
        "This is lifecycle page",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
