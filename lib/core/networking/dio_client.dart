import 'package:dio/dio.dart';

class DioClient {
  static const String _baseUrl = 'YOUR_API_BASE_URL';
  final Dio dio;

  DioClient({required this.dio}) {
    dio.options = BaseOptions(
      baseUrl: _baseUrl,
      headers: {'Content-Type': 'application/json'},
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    // _dio.interceptors.add(
    //   InterceptorsWrapper(
    //     onRequest: (options, handler) async {
    //       // final token = await PrefHelper.getToken();

    //       // if (token != null && token.isNotEmpty && token != 'guest') {
    //       //   options.headers['Authorization'] = 'Bearer $token';
    //       // }
    //       return handler.next(options);
    //     },
    //   ),
    // );
  }
}
