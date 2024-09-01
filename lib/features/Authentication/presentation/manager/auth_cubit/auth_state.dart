part of 'auth_cubit.dart';

sealed class AuthState {}

final class EmailAuthInitial extends AuthState {}

final class EmailAuthLoading extends AuthState {}

final class EmailLoginSuccess extends AuthState {}

final class EmailLoginFailure extends AuthState {
  final String errorCode;

  EmailLoginFailure({required this.errorCode});
}

final class EmailSignUpSuccess extends AuthState {}

final class EmailSignUpFailure extends AuthState {
  final String errorCode;

  EmailSignUpFailure({required this.errorCode});
}
