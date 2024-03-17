/// A class to represent a face in the cube.
///
/// size: is the size of the cube... 3x3 - 4x4 - 5x5
/// face: is a list of size 'size' and contains the values inside that face
///
/// We need to understand that the user is not directly interacting with
/// the cube or it's faces.
///
///
class Face {
  Face({required this.size, required this.face});

  factory Face.plain({required int size, required int value}) =>
      Face(size: size, face: List.filled(size, List.filled(size, value)));
  final int size;
  final List<List<int>> face;
}
