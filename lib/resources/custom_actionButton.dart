import 'package:flutter/material.dart';

import 'constant.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {Key? key,
      required this.onTap,
      required this.text,
      required this.buttonColor,
      required this.textStyle})
      : super(key: key);

  final Function() onTap;
  final String text;
  final Color buttonColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(18),
        ),
        height: 65,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
