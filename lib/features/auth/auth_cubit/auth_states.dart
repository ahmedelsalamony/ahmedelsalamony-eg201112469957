import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {}

class IntialState extends AuthState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class ObscurePasswordState extends AuthState {
  final bool obscurePassword;

  ObscurePasswordState({required this.obscurePassword});
  @override
  List<Object?> get props => [obscurePassword];
}

class AuthLoadingState extends AuthState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class AuthFailureState extends AuthState {
  final String errorMessage;

  AuthFailureState(this.errorMessage);
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoginSuccessState extends AuthState {
  final String token;
  LoginSuccessState({required this.token});
  @override
  List<Object?> get props => throw UnimplementedError();
}
