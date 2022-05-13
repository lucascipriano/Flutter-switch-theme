import 'package:flutter/material.dart';
import 'package:randomproject/controllers/app_controler.dart';

bool isSelected = false;

class botaobolado extends StatefulWidget {
  @override
  State<botaobolado> createState() => _botaoboladoState();
}

class _botaoboladoState extends State<botaobolado> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(
          () {
            isSelected = !isSelected;
            AppController.instance.changeTheme();
          },
        );
      },
      icon: Container(
        child: isSelected == false
            ? Icon(
                Icons.light_mode,
                size: 30,
                color: Colors.orange,
              )
            : Icon(
                Icons.dark_mode,
                size: 30,
              ),
      ),
    );
  }
}

class HeaderUser extends StatefulWidget {
  const HeaderUser({Key? key}) : super(key: key);

  @override
  State<HeaderUser> createState() => _HeaderUserState();
}

class _HeaderUserState extends State<HeaderUser> {
  @override
  Widget build(BuildContext context) {
    return isSelected == false
        ? Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black26),
            child: Icon(
              Icons.person,
              color: Colors.black,
              size: 30,
            ),
          )
        : Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white38),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          );
  }
}
