import 'package:flutter/material.dart';

import 'package:rubix_flutter/core/constants.dart';

class CubePiece extends StatelessWidget {
  const CubePiece({
    required this.intColor,
    super.key,
  });
  final int intColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      // margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
        ),
        borderRadius: BorderRadius.circular(
          4,
        ),
        color: ColorConst.colorMap[intColor],
      ),
    );
  }
}
