/// Exceptions thrown by model classes.
abstract class ModelException implements Exception {
  /// Constructor for [ModelException].
  const ModelException({
    required this.message,
    this.type = 'Model',
  });

  /// The type of the exception.
  final String type;

  /// The message of the exception.
  final String message;
}

/// Thrown when the input length is incorrect.
class IncorrectInputLength extends ModelException {
  /// Constructor for [IncorrectInputLength].
  const IncorrectInputLength({
    required super.message,
  });
}
