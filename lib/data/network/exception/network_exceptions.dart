


class AppException implements Exception {


  AppException({required this.message, required this.prefix});
  final String message;
  final String prefix;


  @override
  String toString() {
    return '$prefix$message';
  }
}

class FetchDataException extends AppException {
  FetchDataException(final String message)
      : super(message: message,prefix: 'Error During Communication: ');
}

class BadRequestException extends AppException {
  BadRequestException({final message}) : super(message: message,prefix:  'Invalid Request: ');
}

class UnauthorisedException extends AppException {
  UnauthorisedException({final message}) : super(message: message,prefix:  'Unauthorised: ');
}

class InvalidInputException extends AppException {
  InvalidInputException({final message}) : super(message: message,prefix:  'Invalid Input: ');
}

class GeneralException extends AppException {
  GeneralException({final message}) : super(message: message,prefix:  'General Error: ');
}
