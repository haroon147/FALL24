import 'package:flutter/material.dart';
class TextField extends StatefulWidget {
  const TextField({super.key, required InputDecoration decoration});

  @override
  State<TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
        ),
        labelText: "Iam input Field",
        hintText: "Enter a Number",
      ),
    );
  }
}
