import 'package:flutter/material.dart';

import 'constant.dart';

class CustomHyperlinkText extends StatelessWidget {
  const CustomHyperlinkText({Key? key, required this.onTap}) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text("Selengkapnya »", style: hyperlinkTextStyle),
      ),
    );
  }
}
