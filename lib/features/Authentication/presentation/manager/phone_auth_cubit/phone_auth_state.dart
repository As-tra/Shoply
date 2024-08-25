part of 'phone_auth_cubit.dart';


sealed class PhoneAuthState {}

final class PhoneAuthInitial extends PhoneAuthState {}

final class PhoneAuthSuccess extends PhoneAuthState {}

final class PhoneAuthFailure extends PhoneAuthState {}
