import 'package:flutter/material.dart';
import 'package:randomproject/pages/home_page.dart';
import 'package:randomproject/switch_theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              "Welcome Lucas",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

_profile() {
  return Container(
    child: HeaderUser(),
  );
}

_options() {
  return Row(
    children: [
      botaobolado(),
    ],
  );
}

_icon(icon) {
  return Container(
    child: Icon(
      icon,
      color: Colors.white,
    ),
  );
}
