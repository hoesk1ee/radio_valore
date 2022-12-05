import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton(
      {Key? key,
      required this.hintText,
      required this.value,
      required this.items,
      required this.onChanged})
      : super(key: key);

  final Widget hintText;
  final String? value;
  final List<DropdownMenuItem> items;
  final void Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0, top: 6),
      child: DropdownButtonHideUnderline(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFEAEAEA),
            borderRadius: BorderRadius.circular(18),
          ),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18),
            child: DropdownButton(
              hint: hintText,
              value: value,
              style: TextStyle(color: Colors.black, fontSize: 12),
              items: items,
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
