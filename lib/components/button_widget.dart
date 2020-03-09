import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  final String text;
  final bool big;
  final Color color;
  final Function cb;
  Button({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
    @required this.cb,
  });

  Button.big({
    this.big = true,
    this.color = DEFAULT,
    @required this.text,
    @required this.cb,
  });
  Button.operation({
    this.big = false,
    this.color = OPERATION,
    @required this.text,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: color,
        onPressed: () => cb(text),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
