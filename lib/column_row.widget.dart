import 'package:flutter/material.dart';

class ColumnRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
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
        width: width,
        color: color,
        child: Text(
          text == null ? '' : '$text',
          style: TextStyle(fontSize: fontSize),
        ));
  }
}
