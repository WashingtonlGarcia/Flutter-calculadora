import 'package:calculadora/screens/calculator.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(48, 48, 48, 0.9),
          title: Row(
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                width: 35,
              ),
              Text(" Calculadora")
            ],
          ),
        ),
        body: Calculator());
  }
}
