import 'package:flutter/material.dart';

//// Button

class Button extends StatelessWidget {
  Button({
    this.childWidget,
    this.textColor,
    this.onPressed,
    this.backgroundColor,
    this.fontWeight,
    this.widthOfButton,
    this.hightOfButton,
    this.elevation,
    this.borderColor,
  });
  var childWidget;
  var textColor;
  var onPressed;
  var backgroundColor;
  var borderColor;
  var fontWeight;
  double elevation;
  double widthOfButton;
  double hightOfButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
//      width: widthOfButton ?? MediaQuery.of(context).size.width / 1.5,
      height: hightOfButton,
      child: MaterialButton(
        elevation: elevation,
        child: childWidget,
        onPressed: onPressed ?? () {},
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: borderColor ?? Colors.black87),
            borderRadius: BorderRadius.circular(60)),
        color: backgroundColor,
        padding: EdgeInsets.all(5),

      ),
    );
  }
}
