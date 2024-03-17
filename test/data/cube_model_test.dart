import 'package:flutter_test/flutter_test.dart';
import 'package:rubix_flutter/data/models/cube_model.dart';
import 'package:rubix_flutter/data/models/three_cube.dart';
import 'package:rubix_flutter/data/models/three_face.dart';

void main() {
  group(
    'CubeModel Function',
    () {
      test(
        'rotate right',
        () {
          final CubeModel refCube = ThreeCube.plain();
          final CubeModel testCube = ThreeCube.plain()..rotateRight();
          expect(
            testCube.front.values,
            refCube.left.values,
          );
          expect(
            testCube.left.values,
            refCube.back.values,
          );
          expect(
            testCube.back.values,
            refCube.right.values,
          );
          expect(
            testCube.right.values,
            refCube.front.values,
          );
          refCube.up.turnAntiClockwise();
          refCube.down.turnClockwise();
          expect(testCube.up.values, refCube.up.values);
          expect(testCube.down.values, refCube.down.values);
        },
      );
      test(
        'rotate left',
        () {
          final CubeModel refCube = ThreeCube.plain();
          final CubeModel testCube = ThreeCube.plain()..rotateLeft();
          expect(
            testCube.front.values,
            refCube.right.values,
          );
          expect(
            testCube.left.values,
            refCube.front.values,
          );
          expect(
            testCube.back.values,
            refCube.left.values,
          );
          expect(
            testCube.right.values,
            refCube.back.values,
          );
          refCube.up.turnClockwise();
          refCube.down.turnAntiClockwise();
          expect(testCube.up.values, refCube.up.values);
          expect(testCube.down.values, refCube.down.values);
        },
      );
      test(
        'rotate up',
        () {
          final CubeModel refCube = ThreeCube.plain();
          final CubeModel testCube = ThreeCube.plain()..rotateUp();
          expect(
            testCube.front.values,
            refCube.down.values,
          );
          expect(
            testCube.up.values,
            refCube.front.values,
          );
          expect(
            testCube.back.values,
            refCube.up.values,
          );
          expect(
            testCube.down.values,
            refCube.back.values,
          );
          refCube.right.turnClockwise();
          refCube.left.turnAntiClockwise();
          expect(testCube.right.values, refCube.right.values);
          expect(testCube.left.values, refCube.left.values);
        },
      );
      test(
        'rotate down',
        () {
          final CubeModel refCube = ThreeCube.plain();
          final CubeModel testCube = ThreeCube.plain()..rotateDown();
          expect(
            testCube.front.values,
            refCube.up.values,
          );
          expect(
            testCube.down.values,
            refCube.front.values,
          );
          expect(
            testCube.back.values,
            refCube.down.values,
          );
          expect(
            testCube.up.values,
            refCube.back.values,
          );
          refCube.right.turnAntiClockwise();
          refCube.left.turnClockwise();
          expect(testCube.right.values, refCube.right.values);
          expect(testCube.left.values, refCube.left.values);
        },
      );
      test(
        'move right',
        () {
          final CubeModel refCube = ThreeCube.plain();
          final CubeModel testCube = ThreeCube.plain()..moveRight();
          final testFace = ThreeFace.plain(value: 0)
            ..replaceCol(
              colNumber: 0,
              newValues: refCube.front.getCol(0),
            )
            ..replaceCol(
              colNumber: 1,
              newValues: refCube.front.getCol(1),
            )
            ..replaceCol(
              colNumber: 2,
              newValues: refCube.down.getCol(2),
            );
          expect(
            testCube.front.values,
            testFace.values,
          );
        },
      );
      test(
        'move left',
        () {
          final CubeModel refCube = ThreeCube.plain();
          final CubeModel testCube = ThreeCube.plain()..moveLeft();
          final testFace = ThreeFace.plain(value: 0)
            ..replaceCol(
              colNumber: 0,
              newValues: refCube.up.getCol(0),
            )
            ..replaceCol(
              colNumber: 1,
              newValues: refCube.front.getCol(1),
            )
            ..replaceCol(
              colNumber: 2,
              newValues: refCube.front.getCol(2),
            );
          expect(
            testCube.front.values,
            testFace.values,
          );
        },
      );

      test(
        'R U L D F B',
        () {
          final CubeModel testCube = ThreeCube.plain()
            ..moveRight()
            ..moveUp()
            ..moveLeft()
            ..moveDown()
            ..moveFront()
            ..moveBack();

          expect(testCube.front.values, [
            [2, 6, 6],
            [2, 4, 1],
            [5, 5, 1],
          ]);
          expect(testCube.back.values, [
            [1, 6, 2],
            [1, 3, 2],
            [1, 5, 5],
          ]);
          expect(testCube.right.values, [
            [2, 3, 3],
            [4, 1, 3],
            [4, 4, 3],
          ]);
          expect(testCube.left.values, [
            [6, 2, 4],
            [6, 2, 4],
            [3, 3, 1],
          ]);
          expect(testCube.up.values, [
            [3, 1, 5],
            [3, 6, 6],
            [5, 4, 4],
          ]);
          expect(testCube.down.values, [
            [4, 1, 6],
            [5, 5, 5],
            [2, 2, 6],
          ]);
        },
      );
      test(
        "R' U' L' D' F' B'",
        () {
          final CubeModel testCube = ThreeCube.plain()
            ..moveRight(inverse: true)
            ..moveUp(inverse: true)
            ..moveLeft(inverse: true)
            ..moveDown(inverse: true)
            ..moveFront(inverse: true)
            ..moveBack(inverse: true);

          expect(testCube.front.values, [
            [2, 6, 1],
            [2, 4, 1],
            [5, 5, 1],
          ]);
          expect(testCube.back.values, [
            [6, 6, 2],
            [1, 3, 2],
            [1, 5, 5],
          ]);
          expect(testCube.right.values, [
            [4, 4, 2],
            [4, 1, 3],
            [4, 3, 3],
          ]);
          expect(testCube.left.values, [
            [3, 2, 6],
            [3, 2, 6],
            [1, 4, 4],
          ]);
          expect(testCube.up.values, [
            [5, 3, 3],
            [4, 6, 6],
            [4, 1, 5],
          ]);
          expect(testCube.down.values, [
            [2, 2, 6],
            [5, 5, 5],
            [3, 1, 6],
          ]);
        },
      );
    },
  );
}
