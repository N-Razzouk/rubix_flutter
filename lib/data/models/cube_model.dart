import 'package:rubix_flutter/data/models/face_model.dart';
import 'package:rubix_flutter/domain/entities/cube.dart';

/// Cube model.
abstract class CubeModel {
  /// Initialize a [CubeModel].
  CubeModel({
    required this.size,
    required this.right,
    required this.left,
    required this.up,
    required this.down,
    required this.front,
    required this.back,
  });

  /// Size of the cube.
  final int size;

  /// Right face.
  FaceModel right;

  /// Left face.
  FaceModel left;

  /// Up face.
  FaceModel up;

  /// Down face.
  FaceModel down;

  /// Front face.
  FaceModel front;

  /// Back face.
  FaceModel back;

  /// Rotate the cube right.
  void rotateRight() {
    final tempLeft = left;

    left = back;
    back = right;
    right = front;
    front = tempLeft;

    up.turnAntiClockwise();
    down.turnClockwise();
  }

  /// Rotate the cube left.
  void rotateLeft() {
    final tempLeft = left;

    left = front;
    front = right;
    right = back;
    back = tempLeft;

    up.turnClockwise();
    down.turnAntiClockwise();
  }

  /// Rotate the cube up.
  void rotateUp() {
    final tempDown = down;
    final modifiedBack = back
      ..turnClockwise()
      ..turnClockwise();
    final modifiedUp = up
      ..turnClockwise()
      ..turnClockwise();
    down = modifiedBack;
    back = modifiedUp;
    up = front;
    front = tempDown;

    right.turnClockwise();
    left.turnAntiClockwise();
  }

  /// Rotate the cube down.
  void rotateDown() {
    final tempModifiedDown = down
      ..turnAntiClockwise()
      ..turnAntiClockwise();
    final modifiedBack = back
      ..turnClockwise()
      ..turnClockwise();
    down = front;
    front = up;
    up = modifiedBack;
    back = tempModifiedDown;

    right.turnAntiClockwise();
    left.turnClockwise();
  }

  /// Move the cube right edge.
  void moveRight({bool inverse = false}) {
    if (inverse) {
      final tempFront = front.getCol(size - 1);

      front.replaceCol(colNumber: size - 1, newValues: up.getCol(size - 1));
      up.replaceCol(
        colNumber: size - 1,
        newValues: back.getCol(0).reversed.toList(),
      );
      back.replaceCol(
        colNumber: 0,
        newValues: down.getCol(size - 1).reversed.toList(),
      );
      down.replaceCol(colNumber: size - 1, newValues: tempFront);

      right.turnAntiClockwise();
    } else {
      final tempFront = front.getCol(size - 1);

      front.replaceCol(colNumber: size - 1, newValues: down.getCol(size - 1));
      down.replaceCol(
        colNumber: size - 1,
        newValues: back.getCol(0).reversed.toList(),
      );
      back.replaceCol(
        colNumber: 0,
        newValues: up.getCol(size - 1).reversed.toList(),
      );
      up.replaceCol(colNumber: size - 1, newValues: tempFront);

      right.turnClockwise();
    }
  }

  /// Move the cube left edge.
  void moveLeft({bool inverse = false}) {
    rotateRight();

    rotateRight();

    moveRight(inverse: inverse);

    rotateLeft();

    rotateLeft();
  }

  /// Move the cube up edge.
  void moveUp({bool inverse = false}) {
    rotateDown();

    rotateRight();

    moveRight(inverse: inverse);

    rotateLeft();

    rotateUp();
  }

  /// Move the cube down edge.
  void moveDown({bool inverse = false}) {
    rotateUp();

    rotateRight();

    moveRight(inverse: inverse);

    rotateLeft();

    rotateDown();
  }

  /// Move the cube front edge.
  void moveFront({bool inverse = false}) {
    rotateRight();
    moveRight(inverse: inverse);
    rotateLeft();
  }

  /// Move the cube back edge.
  void moveBack({bool inverse = false}) {
    rotateLeft();
    moveRight(inverse: inverse);
    rotateRight();
  }

  /// Convert the cube to entity.
  Cube toEntity() => Cube(
        size: size,
        front: front.toEntity(),
        back: back.toEntity(),
        right: right.toEntity(),
        left: left.toEntity(),
        down: down.toEntity(),
        up: up.toEntity(),
      );
}
