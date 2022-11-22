import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({Key? key, required this.content, required this.height})
      : super(key: key);

  final Widget content;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 18),
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color(0xFFEAEAEA),
            blurRadius: 12,
            offset: Offset(0, 2),
          ),
        ], borderRadius: BorderRadius.circular(18), color: Colors.white),
        child: content);
  }
}
