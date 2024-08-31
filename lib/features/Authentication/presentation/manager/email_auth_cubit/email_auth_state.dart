part of 'email_auth_cubit.dart';

sealed class EmailAuthState {}

final class EmailAuthInitial extends EmailAuthState {}

final class EmailAuthLoading extends EmailAuthState {}

final class EmailAuthSuccess extends EmailAuthState {}

final class EmailAuthFailure extends EmailAuthState {
  final String errorCode;

  EmailAuthFailure({required this.errorCode});
}
