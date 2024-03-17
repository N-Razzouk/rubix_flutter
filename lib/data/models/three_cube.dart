import 'package:rubix_flutter/data/models/cube_model.dart';
import 'package:rubix_flutter/data/models/three_face.dart';
import 'package:rubix_flutter/domain/entities/cube.dart';

class ThreeCube extends CubeModel {
  ThreeCube({
    required super.right,
    required super.left,
    required super.up,
    required super.down,
    required super.front,
    required super.back,
    super.size = 3,
  });

  factory ThreeCube.plain() => ThreeCube(
        right: ThreeFace.plain(value: 1),
        left: ThreeFace.plain(value: 2),
        up: ThreeFace.plain(value: 6),
        down: ThreeFace.plain(value: 5),
        front: ThreeFace.plain(value: 4),
        back: ThreeFace.plain(value: 3),
      );

  factory ThreeCube.fromEntity(Cube cube) => ThreeCube(
        right: ThreeFace.fromEntity(cube.right),
        left: ThreeFace.fromEntity(cube.left),
        up: ThreeFace.fromEntity(cube.up),
        down: ThreeFace.fromEntity(cube.down),
        front: ThreeFace.fromEntity(cube.front),
        back: ThreeFace.fromEntity(cube.back),
      );
}
