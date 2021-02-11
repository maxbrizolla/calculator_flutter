import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final int flex;
  final Color color;
  final void Function(String) cb;

  Button(
      {@required this.text,
      this.flex = 1,
      this.color = DEFAULT,
      @required this.cb});
  Button.big(
      {@required this.text,
      this.flex = 2,
      this.color = DEFAULT,
      @required this.cb});
  Button.operation(
      {@required this.text,
      this.flex = 1,
      this.color = OPERATION,
      @required this.cb});
  Button.dark(
      {@required this.text,
      this.flex = 1,
      this.color = DARK,
      @required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: RaisedButton(
        color: this.color,
        child: Text(
          this.text,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
