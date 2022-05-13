import 'package:flutter/material.dart';
import 'package:randomproject/components/header.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
            ],
          ),
        ),
      ),
    );
  }
}
