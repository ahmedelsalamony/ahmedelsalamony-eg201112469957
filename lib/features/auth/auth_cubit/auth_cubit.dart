import 'package:eg201112469957/features/auth/auth_cubit/auth_states.dart';
import 'package:eg201112469957/features/auth/data/repository/Auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../core/app_strings.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;
  AuthCubit({required this.authRepository}) : super(IntialState());

  showHidePassword(bool value) {
    emit(ObscurePasswordState(obscurePassword: value));
  }

  Future<void> login({required String mobile, required String password}) async {
    emit(AuthLoadingState());
    var response = await authRepository.login(
      mobile: mobile,
      password: password,
    );
    response.fold((failure) => emit(AuthFailureState(failure.errMessage)),
        (data) {
      var box = Hive.box(AppStrings.kHiveBoxName);
      box.put(AppStrings.kIsLoggedIn, true);
      box.put(AppStrings.kToken, data.token);
      box.put(AppStrings.kFirstName, data.user.name);
      box.put(AppStrings.kUserId, data.user.id);
      box.put(AppStrings.kSchoolId, data.user.school_id);
      return emit(
        LoginSuccessState(token: data.token),
      );
    });
  }
}
