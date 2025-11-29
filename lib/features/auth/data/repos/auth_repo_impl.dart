import 'package:course_learning/core/networking/api_error.dart';
import 'package:course_learning/core/networking/dio_client.dart';
import 'package:course_learning/features/auth/data/models/register_model.dart';
import 'package:course_learning/features/auth/domain/entities/user_entity.dart';
import 'package:course_learning/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl implements AuthRepo {
  final DioClient dioClient;

  AuthRepoImpl({required this.dioClient});
  @override
  Future<Either<ApiError, UserEntity>> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiError, UserEntity>> register({required RegisterModel user}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
