import 'package:calculadora/components/button_row_widget.dart';
import 'package:calculadora/components/button_widget.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final Function cb;
  Keyboard({@required this.cb});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      child: Column(
        children: <Widget>[
          ButtonRow(buttons: [
            Button.big(
              color: Button.DARK,
              text: "AC",
              cb: cb,
            ),
            Button(
              color: Button.DARK,
              text: "%",
              cb: cb,
            ),
            Button.operation(
              text: "/",
              cb: cb,
            ),
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button(
              text: "7",
              cb: cb,
            ),
            Button(
              text: "8",
              cb: cb,
            ),
            Button(
              text: "9",
              cb: cb,
            ),
            Button.operation(
              text: "x",
              cb: cb,
            ),
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button(
              text: "4",
              cb: cb,
            ),
            Button(
              text: "5",
              cb: cb,
            ),
            Button(
              text: "6",
              cb: cb,
            ),
            Button.operation(
              text: "-",
              cb: cb,
            ),
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button(
              text: "1",
              cb: cb,
            ),
            Button(
              text: "2",
              cb: cb,
            ),
            Button(
              text: "3",
              cb: cb,
            ),
            Button.operation(
              text: "+",
              cb: cb,
            ),
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button.big(
              text: "0",
              cb: cb,
            ),
            Button(
              text: ".",
              cb: cb,
            ),
            Button.operation(
              text: "=",
              cb: cb,
            ),
          ]),
        ],
      ),
    );
  }
}
