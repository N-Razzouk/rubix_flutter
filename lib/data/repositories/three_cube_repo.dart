import 'package:rubix_flutter/data/data_source/cube_data_source.dart';
import 'package:rubix_flutter/data/models/three_cube.dart';
import 'package:rubix_flutter/domain/entities/cube.dart';
import 'package:rubix_flutter/domain/repositories/three_max_cube_repo.dart';

class ThreeCubeRepo extends ThreeMaxCubeRepo {
  final CubeDataSource ds = CubeDataSource();

  @override
  Future<Cube> createCube() async {
    ds.cube = ThreeCube.plain();
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> getCube() async => ds.cube.toEntity();

  @override
  Future<Cube> down({bool isInverted = false}) async {
    ds.cube.moveDown(inverse: isInverted);
    ds.moves += 'D - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> front({bool isInverted = false}) async {
    ds.cube.moveFront(inverse: isInverted);
    ds.moves += 'F - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> left({bool isInverted = false}) async {
    ds.cube.moveLeft(inverse: isInverted);
    ds.moves += 'L - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> right({bool isInverted = false}) async {
    ds.cube.moveRight(inverse: isInverted);
    ds.moves += 'R - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> up({bool isInverted = false}) async {
    ds.cube.moveUp(inverse: isInverted);
    ds.moves += 'U - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> back({bool isInverted = false}) async {
    ds.cube.moveBack(inverse: isInverted);
    ds.moves += 'B - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> rotateLeft() async {
    ds.cube.rotateLeft();
    ds.moves += 'rotate X negative - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> rotateRight() async {
    ds.cube.rotateRight();
    ds.moves += 'rotate X positive - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> rotateDown() async {
    ds.cube.rotateDown();
    ds.moves += 'rotate Y negative - ';
    return ds.cube.toEntity();
  }

  @override
  Future<Cube> rotateUp() async {
    ds.cube.rotateUp();
    ds.moves += 'rotate Up ';
    return ds.cube.toEntity();
  }
}
