import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const colorDark = Color.fromRGBO(82, 82, 82, 1);
  static const colorDefault = Color.fromRGBO(112, 112, 112, 1);
  static const colorOperation = Color.fromRGBO(250, 158, 13, 1);

  final String textButton;
  final bool buttonBig;
  final Color backgroundButton;
  final void Function(String) callBack;
  Button(
      {required this.textButton,
      this.buttonBig = false,
      this.backgroundButton = colorDefault,
      required this.callBack});

  Button.big(
      {required this.textButton,
      this.buttonBig = true,
      this.backgroundButton = colorDefault,
      required this.callBack});

  Button.operation(
      {required this.textButton,
      this.buttonBig = false,
      this.backgroundButton = colorOperation,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: buttonBig ? 2 : 1,
        child: ElevatedButton(
            onPressed: () => callBack(textButton),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(this.backgroundButton),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            child: Text(textButton)));
  }
}
