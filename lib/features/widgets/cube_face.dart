import 'package:flutter/material.dart';
import 'package:rubix_flutter/domain/entities/face.dart';
import 'package:rubix_flutter/features/widgets/cube_piece.dart';

class CubeFaceWidget extends StatelessWidget {
  const CubeFaceWidget({required this.face, required this.faceName, super.key});
  final String faceName;
  final Face face;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          4,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final List<int> row in face.face)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final int cubePiece in row)
                  CubePiece(
                    intColor: cubePiece,
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
