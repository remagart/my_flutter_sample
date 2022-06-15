import 'package:flutter/material.dart';

class RenderHomepageRowWidget extends StatelessWidget {
  const RenderHomepageRowWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.navPage})
      : super(key: key);

  final String title;
  final String subtitle;
  final Widget navPage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          // Navigator.pushNamed(context, navPage);
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => navPage));

          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => futureIndex(barName: title)));
        });
  }
}
