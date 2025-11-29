import 'package:course_learning/core/networking/api_error.dart';
import 'package:course_learning/features/auth/data/models/register_model.dart';
import 'package:course_learning/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<ApiError, UserEntity>> register({required RegisterModel user});
  Future<Either<ApiError, UserEntity>> login({required String email, required String password});
}
