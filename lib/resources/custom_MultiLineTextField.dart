import 'package:flutter/material.dart';

import 'constant.dart';

class CustomMultiLineTextField extends StatelessWidget {
  const CustomMultiLineTextField(
      {Key? key, required this.controller, required this.hintText, this.height})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFEAEAEA),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 18.0, right: 18, top: 12, bottom: 12),
        child: TextField(
          maxLines: 10,
          style: textFieldFontSize,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
