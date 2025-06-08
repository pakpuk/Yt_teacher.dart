import 'package:flutter/material.dart';

class TetfieldWidget extends StatelessWidget {
  const TetfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
      ),
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      cursorColor: Colors.blue,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
    );
  }
}
