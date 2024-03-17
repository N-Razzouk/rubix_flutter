import 'package:rubix_flutter/domain/entities/face.dart';

/// Cube Entity - represent an instance of a cube
///
/// size: size of the cube
/// front, back .. : faces of the cube..

class Cube {
  const Cube({
    required this.size,
    required this.front,
    required this.back,
    required this.right,
    required this.left,
    required this.down,
    required this.up,
  });

  factory Cube.solved({required int size}) => Cube(
        size: size,
        right: Face.plain(size: size, value: 1),
        left: Face.plain(size: size, value: 2),
        up: Face.plain(size: size, value: 6),
        down: Face.plain(size: size, value: 5),
        front: Face.plain(size: size, value: 4),
        back: Face.plain(size: size, value: 3),
      );
  final int size;
  final Face front;
  final Face back;
  final Face right;
  final Face left;
  final Face up;
  final Face down;
}
