part of 'email_auth_cubit.dart';

sealed class EmailAuthState {}

final class EmailAuthInitial extends EmailAuthState {}

final class EmailAuthLoading extends EmailAuthState {}

final class EmailLoginSuccess extends EmailAuthState {}

final class EmailLoginFailure extends EmailAuthState {
  final String errorCode;

  EmailLoginFailure({required this.errorCode});
}
final class EmailSignUpSuccess extends EmailAuthState {}

final class EmailSignUpFailure extends EmailAuthState {
  final String errorCode;

  EmailSignUpFailure({required this.errorCode});
}
