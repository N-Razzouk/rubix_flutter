import 'package:flutter/material.dart';

import 'package:rubix_flutter/domain/entities/cube.dart';
import 'package:rubix_flutter/features/widgets/cube_face.dart';

class CubeDisplay extends StatelessWidget {
  const CubeDisplay({
    required this.cube,
    super.key,
  });
  final Cube cube;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CubeFaceWidget(
          face: cube.back,
          faceName: 'Back',
        ),
        CubeFaceWidget(
          face: cube.up,
          faceName: 'Up',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CubeFaceWidget(
              face: cube.left,
              faceName: 'Left',
            ),
            CubeFaceWidget(
              face: cube.front,
              faceName: 'Front',
            ),
            CubeFaceWidget(
              face: cube.right,
              faceName: 'Right',
            ),
          ],
        ),
        CubeFaceWidget(
          face: cube.down,
          faceName: 'Down',
        ),
      ],
    );
  }
}
