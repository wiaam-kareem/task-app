class Failure implements Exception {
  final String errorMessage;

  const Failure({required this.errorMessage});
  static get getMessage {
    return '';
  }
}
