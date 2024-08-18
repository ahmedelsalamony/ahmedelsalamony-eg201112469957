import 'dart:io' show SocketException;
import '../../core/app_strings.dart';
import 'package:dio/dio.dart' show DioException, DioExceptionType;

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        message = AppStrings.cancelRequest;
        break;
      case DioExceptionType.connectionTimeout:
        message = AppStrings.connectionTimeOut;
        break;
      case DioExceptionType.receiveTimeout:
        message = AppStrings.receiveTimeOut;
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioException.response?.statusCode,
          dioException.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = AppStrings.sendTimeOut;
        break;
      case DioExceptionType.unknown:
        if (dioException.error is SocketException) {
          message = AppStrings.socketException;
          break;
        }
        message = AppStrings.unexpectedError;
        break;
      default:
        message = AppStrings.unknownError;
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return AppStrings.badRequest;
      case 401:
        return AppStrings.unauthorized;
      case 403:
        return AppStrings.forbidden;
      case 404:
        return AppStrings.notFound;
      case 422:
        return AppStrings.duplicateEmail;
      case 500:
        return AppStrings.internalServerError;
      case 502:
        return AppStrings.badGateway;
      default:
        return AppStrings.unknownError;
    }
  }

  @override
  String toString() => message;
}
