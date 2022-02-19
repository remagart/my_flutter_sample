import 'dart:developer';

import 'package:flutter/material.dart';

class lifecycle_page2 extends StatefulWidget {
  lifecycle_page2({Key? key}) : super(key: key);

  @override
  State<lifecycle_page2> createState() {
    log("[2]create State");
    return _lifecycle_page2State();
  }
}

class _lifecycle_page2State extends State<lifecycle_page2> {
  @override
  void initState() {
    super.initState();
    log("[2]init state");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    log("[2]didChangeDependencies");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();

    log("[2]deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    log("[2]dispose");
  }

  @override
  Widget build(BuildContext context) {
    log("[2] build");
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.only(top: 64),
      child: const Text(
        "This is lifecycle page2",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
