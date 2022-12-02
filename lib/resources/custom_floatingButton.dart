import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key, required this.onPressed})
      : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF1246AD).withOpacity(0.69),
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
