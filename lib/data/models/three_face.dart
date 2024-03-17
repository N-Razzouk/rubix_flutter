import 'package:rubix_flutter/data/models/face_model.dart';
import 'package:rubix_flutter/domain/entities/face.dart';

class ThreeFace extends FaceModel {
  ThreeFace({required super.values, super.size = 3});

  factory ThreeFace.fromEntity(Face face) => ThreeFace(values: face.face);

  factory ThreeFace.plain({required int value}) =>
      ThreeFace(values: List.filled(3, List.filled(3, value)));

  int get centerValue => getValue(row: 1, column: 1);
}
