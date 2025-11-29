import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart'; // Generated file

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // GET request
  @GET('{endpoint}')
  Future<dynamic> get(
    @Path('endpoint') String endpoint,
    @Queries() Map<String, dynamic>? queryParameters,
  );

  // POST request
  @POST('{endpoint}')
  Future<dynamic> post(@Path('endpoint') String endpoint, @Body() dynamic body);

  // PUT request
  @PUT('{endpoint}')
  Future<dynamic> put(@Path('endpoint') String endpoint, @Body() dynamic body);

  // DELETE request
  @DELETE('{endpoint}')
  Future<dynamic> delete(
    @Path('endpoint') String endpoint,
    @Queries() Map<String, dynamic>? queryParameters,
  );
}
