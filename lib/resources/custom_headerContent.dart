import 'package:flutter/material.dart';
import 'constant.dart';

class CustomHeaderContent extends StatelessWidget {
  const CustomHeaderContent({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                label,
                style: textStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
