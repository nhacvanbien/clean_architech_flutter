import 'package:dio/dio.dart';

class DioExceptionHandler {
  String? message;

  DioExceptionHandler.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request was cancelled!";
        break;

      case DioErrorType.connectTimeout:
        message = "Connection timeout!";
        break;

      case DioErrorType.receiveTimeout:
        message = "Received request timeout!";
        break;
      case DioErrorType.sendTimeout:
        message = "Send request timeout!";
        break;
      default:
        break;
    }
  }

  @override
  String toString() {
    return message!;
  }
}
