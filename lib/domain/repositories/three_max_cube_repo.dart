// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rubix_flutter/domain/entities/cube.dart';

/// An Interface for all cube functionality
abstract class ThreeMaxCubeRepo {
  const ThreeMaxCubeRepo();

  /// create a new cube and get it
  ///
  Future<Cube> createCube();
  Future<Cube> getCube();

  /// cube moves
  ///
  Future<Cube> right({bool isInverted = false});
  Future<Cube> left({bool isInverted = false});
  Future<Cube> up({bool isInverted = false});
  Future<Cube> down({bool isInverted = false});
  Future<Cube> front({bool isInverted = false});
  Future<Cube> back({bool isInverted = false});

  /// Rotations
  ///
  Future<Cube> rotateRight();
  Future<Cube> rotateLeft();
  Future<Cube> rotateUp();
  Future<Cube> rotateDown();
}
