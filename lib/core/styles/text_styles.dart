import 'package:flutter/material.dart';

/// Class containing text styles used in the app.
final class TextStyles {
  /// Black 12 text style.
  static const TextStyle black12 = TextStyle(
    color: Colors.black,
    fontSize: 12,
  );

  /// Black 12 with overline text style.
  static const TextStyle black12WithOverline = TextStyle(
    color: Colors.black,
    fontSize: 12,
    decoration: TextDecoration.overline,
    decorationColor: Colors.black,
  );
}
