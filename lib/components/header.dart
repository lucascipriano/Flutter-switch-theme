// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:randomproject/switch_theme.dart';

// ignore: use_key_in_widget_constructors
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _profile(),
                _options(),
              ],
            ),
            Text(
              "Lucas Cipriano",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}

_profile() {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: HeaderUser(),
  );
}

_options() {
  return Row(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      BotaoBolado(),
    ],
  );
}

// ignore: unused_element
_icon(icon) {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Icon(
      icon,
      color: Colors.white,
    ),
  );
}
