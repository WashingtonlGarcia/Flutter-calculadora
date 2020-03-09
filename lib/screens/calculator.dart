import 'package:calculadora/components/display_widget.dart';
import 'package:calculadora/components/keyboard_widget.dart';
import 'package:calculadora/models/memory.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Display(text: memory.value),
      Keyboard(
        cb: _onPressed,
      )
    ]);
  }
}
