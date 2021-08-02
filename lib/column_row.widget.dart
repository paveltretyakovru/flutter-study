import 'package:flutter/material.dart';

class ColumnRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      // textBaseline: TextBaseline.alphabetic,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        TextWidget(
            color: Colors.limeAccent, width: 120, text: 'First', fontSize: 50),
        TextWidget(
            color: Colors.cyanAccent, width: 180, text: 'Second', fontSize: 40),
        TextWidget(
            color: Colors.purpleAccent,
            width: 100,
            text: 'Third',
            fontSize: 30),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final double? width;
  final double? fontSize;

  const TextWidget({Key? key, this.text, this.color, this.width, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: width,
        color: color,
        child: Text(
          text == null ? '' : '$text',
          style: TextStyle(fontSize: fontSize, decoration: TextDecoration.none),
        ));
  }
}
