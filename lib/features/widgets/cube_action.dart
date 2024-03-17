import 'package:flutter/material.dart';
import 'package:rubix_flutter/core/styles/button_styles.dart';
import 'package:rubix_flutter/core/styles/text_styles.dart';

class CubeAction extends StatelessWidget {
  const CubeAction({
    required this.icon,
    required this.caption,
    required this.onClick,
    this.isReverse = false,
    super.key,
  });
  final IconData icon;
  final String caption;
  final VoidCallback onClick;
  final bool isReverse;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: TextButton(
        style: ButtonStyles.lightBlueButtonStyle,
        onPressed: onClick,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   icon,
            // ),
            Text(
              caption,
              style: isReverse
                  ? TextStyles.black12WithOverline
                  : TextStyles.black12,
            ),
          ],
        ),
      ),
    );
  }
}
