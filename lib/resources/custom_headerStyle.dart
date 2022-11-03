import 'package:flutter/material.dart';

class CustomHeaderStyle extends StatelessWidget {
  const CustomHeaderStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(18),
        bottomLeft: Radius.circular(18),
      ),
      child: Container(
        height: 125,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/background.png",
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
