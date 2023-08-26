class ApiExceptions implements Exception {
  final dynamic message;

  ApiExceptions({required this.message});
  @override
  String toString() {
    if (message is String) {
      return message;
    } else {
      return "Exception+$message";
    }
  }
}
