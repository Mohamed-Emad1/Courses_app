import 'package:course_learning/core/networking/api_error.dart';
import 'package:dio/dio.dart';

class ApiExceptions {
  static ApiError handleApiError(dynamic error) {
    if (error is DioException) {
      // DioError is now DioException
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          return ApiError(message: "Connection Timeout", statusCode: 504);
        case DioExceptionType.badResponse:
          return ApiError(
            message: error.response?.statusMessage ?? "Bad Response",
            statusCode: error.response?.statusCode,
          );
        default:
          return ApiError(
            message: "An unexpected error occurred. Please try again.",
            statusCode: error.response?.statusCode,
          );
      }
    }
    return ApiError(message: "Unknown error occurred");
  }
}
