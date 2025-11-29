import 'package:bloc/bloc.dart';
import 'package:course_learning/features/auth/data/models/register_model.dart';
import 'package:course_learning/features/auth/domain/repos/auth_repo.dart';
import 'package:course_learning/generated/l10n.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepo}) : super(AuthInitial());

  final AuthRepo authRepo;

  void register({required RegisterModel user}) async{
    emit(AuthLoading());
    try {
      final result = await authRepo.register(user: user);
      result.fold(
        (l) => emit(AuthError(message: l.message)),
        (r) => emit(AuthSuccess()),
      );
    } catch (e) {
      emit(AuthError(message: "${S.current.unexpected_error} $e"));
    }
  }

  void login({required String email, required String password}) async {
    emit(AuthLoading());
    try {
      final result = await authRepo.login(email: email, password: password);
      result.fold(
        (l) => emit(AuthError(message: l.message)),
        (r) => emit(AuthSuccess()),
      );
    } catch (e) {
      emit(AuthError(message: "${S.current.unexpected_error} $e"));
    }
  }
}
