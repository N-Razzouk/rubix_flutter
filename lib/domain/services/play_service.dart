import 'package:rubix_flutter/domain/entities/cube.dart';
import 'package:rubix_flutter/domain/repositories/three_max_cube_repo.dart';
import 'package:rubix_flutter/domain/services/cube_service.dart';

/// Service to move cube. Implements [CubeService].
class CubePlayService extends CubeService {
  /// Initialize a [CubePlayService].
  const CubePlayService({
    required this.repo,
  }) : super();

  /// Repository to modify the cube.
  final ThreeMaxCubeRepo repo;

  /// Create a new cube.
  Future<Cube> createCube() async {
    return repo.createCube();
  }

  /// Move the cube right edge.
  Future<Cube> right({bool inverse = false}) => repo.right();

  /// Move the cube left edge.
  Future<Cube> left({bool inverse = false}) => repo.left();

  /// Move the cube up edge.
  Future<Cube> up({bool inverse = false}) => repo.up();

  /// Move the cube down edge.
  Future<Cube> down({bool inverse = false}) => repo.down();

  /// Move the cube front edge.
  Future<Cube> front({bool inverse = false}) => repo.front();

  /// Move the cube back edge.
  Future<Cube> back({bool inverse = false}) => repo.back();

  /// Rotate the cube right.
  Future<Cube> rotateRight() => repo.rotateRight();

  /// Rotate the cube left.
  Future<Cube> rotateLeft() => repo.rotateLeft();

  /// Rotate the cube up.
  Future<Cube> rotateUp() => repo.rotateUp();

  /// Rotate the cube down.
  Future<Cube> rotateDown() => repo.rotateDown();
}
