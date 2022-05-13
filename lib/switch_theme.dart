// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:randomproject/controllers/app_controler.dart';

bool isSelected = false;

class BotaoBolado extends StatefulWidget {
  const BotaoBolado({Key? key}) : super(key: key);

  @override
  State<BotaoBolado> createState() => _BotaoBoladoState();
}

class _BotaoBoladoState extends State<BotaoBolado> {
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
            // ignore: prefer_const_constructors
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
    return Column(
      children: [
        isSelected == false
            ? Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black26),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
                ),
              )
            : Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white38),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
        Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class BalanceUser extends StatefulWidget {
  const BalanceUser({Key? key}) : super(key: key);

  @override
  State<BalanceUser> createState() => _BalanceUserState();
}

class _BalanceUserState extends State<BalanceUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        // color: Colors.black45,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              "Balance",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey[400],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "\$14,358.44",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                height: 30,
                width: 60,
                margin: EdgeInsets.only(left: 16),
                child: Text("22.22%"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
