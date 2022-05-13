import 'package:flutter/material.dart';
import 'package:randomproject/controllers/app_controler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App bolado"),
        actions: <Widget>[
          IconButton(
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
                    ? Icon(Icons.light_mode)
                    : Icon(Icons.dark_mode),
              ))
        ],
      ),
      body: Center(),
    );
  }
}
