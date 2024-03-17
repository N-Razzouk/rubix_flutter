import 'package:flutter/material.dart';

class ColorConst {
  static const Map<int, Color> colorMap = {
    1: Colors.white,
    2: Colors.yellow,
    3: Colors.orange,
    4: Colors.red,
    5: Colors.blue,
    6: Colors.green,
  };
}

class MoveLetterCodes {
  static const Map<String, String> moveLettersMap = {
    'F': 'Front',
    'B': 'Back',
    'U': 'Up',
    'D': 'Down',
    'L': 'Left',
    'R': 'Right',
  };

  static const List<String> moveLettersList = ['F', 'B', 'U', 'D', 'L', 'R'];
}
