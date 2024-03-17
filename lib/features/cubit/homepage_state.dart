part of 'homepage_cubit.dart';

class HomepageState extends Equatable {
  const HomepageState({required this.cube});

  factory HomepageState.initial() => HomepageState(cube: Cube.solved(size: 3));

  final Cube cube;

  @override
  List<Object> get props => [
        cube,
      ];

  HomepageState copyWith({
    Cube? cube,
  }) {
    return HomepageState(
      cube: cube ?? this.cube,
    );
  }
}
