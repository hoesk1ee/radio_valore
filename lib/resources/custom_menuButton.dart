import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({Key? key, required this.onTap, required this.icons, required this.text}) : super(key: key);

  final IconData icons;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(0, 3)
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icons, size: 42,),
            SizedBox(height: 8,),
            Text(text, style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
