import 'package:flutter/material.dart';

class CustomBroadcastButton extends StatelessWidget {
  const CustomBroadcastButton(
      {Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);

  final IconData icon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(2, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(18),
        ),
        width: double.infinity,
        height: 165,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              text,
            )
          ],
        ),
      ),
    );
  }
}
