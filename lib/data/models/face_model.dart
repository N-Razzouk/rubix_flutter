import 'package:rubix_flutter/core/failures/failure.dart';
import 'package:rubix_flutter/domain/entities/face.dart';

/// A base Face class that introduces the face transformations.
abstract class FaceModel {
  /// Initialize a [FaceModel].
  FaceModel({required this.size, required this.values});

  /// List of values in the face.
  List<List<int>> values;

  /// Size of the face.
  final int size;

  /// Get the values of a given row.
  List<int> getRow(int number) => values[number];

  /// Get the values of a given column.
  List<int> getCol(int number) =>
      values.map((element) => element[number]).toList();

  /// Get the value of a given row and column.
  int getValue({
    required int row,
    required int column,
  }) =>
      values[row][column];

  /// Changes the values of a given row and returns the old values
  List<int> replaceRow({required int rowNumber, required List<int> newValues}) {
    if (newValues.length != size) {
      throw const IncorrectInputLength(
        message:
            'Face Model: replaceRow function got input of incorrect length',
      );
    }
    final temp = getRow(rowNumber);
    values[rowNumber - 1] = newValues;
    return temp;
  }

  /// Changes the values of a given column and returns the old values
  List<int> replaceCol({required int colNumber, required List<int> newValues}) {
    if (newValues.length != size) {
      throw const IncorrectInputLength(
        message:
            'Face Model: replaceCol function got input of incorrect length',
      );
    }

    final temp = getCol(colNumber);

    for (var i = 0; i < size; i++) {
      values[i][colNumber] = newValues[i];
    }
    return temp;
  }

  /// Turn the face clockwise.
  void turnClockwise() {
    final newValues = <List<int>>[];
    for (var i = 0; i < size; i++) {
      newValues.add(getCol(i).reversed.toList());
    }
    values = newValues;
  }

  /// Turn the face anti-clockwise.
  void turnAntiClockwise() {
    final newValues = <List<int>>[];
    for (var i = 0; i < size; i++) {
      newValues.add(getCol(size - i - 1));
    }
    values = newValues;
  }

  /// Convert the face to an entity.
  Face toEntity() => Face(size: size, face: values);
}
