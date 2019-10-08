import 'package:flutter/material.dart';

class CustomStyle {
  final Color fontColor;
  final Color backgroundColor;
  final double fontSize;
  final double height;
  final double width;
  CustomStyle({
    this.fontColor,
    this.backgroundColor,
    this.fontSize,
    this.height,
    this.width,
  });
}

class BasicButton extends StatelessWidget {
  final String label;
  final bool isDesabled;
  final CustomStyle style;
  final Function onPressed;

  const BasicButton({
    Key key,
    this.label,
    this.style,
    this.isDesabled,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: style.height,
      width: style.width,
      child: FlatButton(
        color: style.backgroundColor,
        child: Text(
          label,
          style: TextStyle(
            color: style.fontColor,
            fontSize: style.fontSize,
          ),
        ),
        onPressed: isDesabled ? null : onPressed,
      ),
    );
  }
}
