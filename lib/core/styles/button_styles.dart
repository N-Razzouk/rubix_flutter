import 'package:flutter/material.dart';

/// Class containing button styles used in the app.
final class ButtonStyles {
  /// Light blue button style.
  static final ButtonStyle lightBlueButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
    overlayColor:
        MaterialStateProperty.all<Color>(Colors.blueGrey.withOpacity(0.4)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
  );
}
