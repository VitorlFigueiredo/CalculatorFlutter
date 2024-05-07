import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callBack;
  Keyboard(this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button.big(
              textButton: "AC",
              backgroundButton: Button.colorDark,
              callBack: callBack,
            ),
            Button(
                textButton: "%",
                backgroundButton: Button.colorDark,
                callBack: callBack),
            Button.operation(textButton: "/", callBack: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(textButton: "7", callBack: callBack),
            Button(textButton: "8", callBack: callBack),
            Button(textButton: "9", callBack: callBack),
            Button.operation(textButton: "x", callBack: callBack)
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(textButton: "4", callBack: callBack),
            Button(textButton: "5", callBack: callBack),
            Button(textButton: "6", callBack: callBack),
            Button.operation(textButton: "-", callBack: callBack)
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(textButton: "1", callBack: callBack),
            Button(textButton: "2", callBack: callBack),
            Button(textButton: "3", callBack: callBack),
            Button.operation(textButton: "+", callBack: callBack)
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button.big(textButton: "0", callBack: callBack),
            Button(textButton: ".", callBack: callBack),
            Button.operation(textButton: "=", callBack: callBack),
          ])
        ],
      ),
    );
  }
}
