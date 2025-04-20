import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF199A8E),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(200),
    ),
    minimumSize: Size(250, 60),
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),);
}
