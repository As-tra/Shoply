import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'email_auth_state.dart';

class EmailAuthCubit extends Cubit<EmailAuthState> {
  EmailAuthCubit() : super(EmailAuthInitial());

  Future<void> loginWithEmail({
    required String email,
    required String password,
  }) async {
    emit(EmailAuthLoading());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(EmailLoginSuccess());
    } on FirebaseException catch (exception) {
      log('error  => ${exception.code}');
      emit(EmailLoginFailure(errorCode: exception.code));
    }
  }

  Future<void> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    emit(EmailAuthLoading());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(EmailSignUpSuccess());
    } on FirebaseException catch (exception) {
      emit(EmailSignUpFailure(errorCode: exception.code));
    }
  }

  @override
  void onChange(Change<EmailAuthState> change) {
    super.onChange(change);
    log(change.toString());
  }
}
