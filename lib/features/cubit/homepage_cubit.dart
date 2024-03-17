import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rubix_flutter/data/repositories/three_cube_repo.dart';
import 'package:rubix_flutter/domain/entities/cube.dart';
import 'package:rubix_flutter/domain/services/play_service.dart';

part 'homepage_state.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit() : super(HomepageState(cube: Cube.solved(size: 3))) {
    service = CubePlayService(repo: ThreeCubeRepo());
    service.createCube();
  }
  late final CubePlayService service;

  Future<void> turnRight() async {
    final cube = await service.rotateRight();
    emit(state.copyWith(cube: cube));
  }

  Future<void> turnLeft() async {
    final cube = await service.rotateLeft();
    emit(state.copyWith(cube: cube));
  }

  Future<void> turnUp() async {
    final cube = await service.rotateUp();
    emit(state.copyWith(cube: cube));
  }

  Future<void> turnDown() async {
    final cube = await service.rotateDown();
    emit(state.copyWith(cube: cube));
  }

  Future<void> right({
    bool inverse = false,
  }) async {
    final cube = await service.right(
      inverse: inverse,
    );
    emit(
      state.copyWith(
        cube: cube,
      ),
    );
  }

  Future<void> left({
    bool inverse = false,
  }) async {
    final cube = await service.left(
      inverse: inverse,
    );
    emit(
      state.copyWith(
        cube: cube,
      ),
    );
  }

  Future<void> up({
    bool inverse = false,
  }) async {
    final cube = await service.up(
      inverse: inverse,
    );
    emit(
      state.copyWith(
        cube: cube,
      ),
    );
  }

  Future<void> down({
    bool inverse = false,
  }) async {
    final cube = await service.down(
      inverse: inverse,
    );
    emit(
      state.copyWith(
        cube: cube,
      ),
    );
  }

  Future<void> front({
    bool inverse = false,
  }) async {
    final cube = await service.front(
      inverse: inverse,
    );
    emit(
      state.copyWith(
        cube: cube,
      ),
    );
  }

  Future<void> back({
    bool inverse = false,
  }) async {
    final cube = await service.back(
      inverse: inverse,
    );
    emit(
      state.copyWith(
        cube: cube,
      ),
    );
  }
}
