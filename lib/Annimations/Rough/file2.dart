import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.text, required this.onTap});
final String text;
  final void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: Text(text));
  }
}
