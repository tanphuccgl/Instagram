import 'package:flutter/material.dart';

class TextFieldEditProfile extends StatelessWidget {
  final String label;
  const TextFieldEditProfile({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 15),
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: label,
        labelStyle: const TextStyle(fontSize: 15),
      ),
    );
  }
}
