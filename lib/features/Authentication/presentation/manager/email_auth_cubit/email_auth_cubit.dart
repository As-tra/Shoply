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
      emit(EmailAuthSuccess());
    } on FirebaseException catch (exception) {
      log('error  => ${exception.code}');
      emit(EmailAuthFailure(errorCode: exception.code));
    }
  }

  @override
  void onChange(Change<EmailAuthState> change) {
    super.onChange(change);
    log(change.toString());
  }
}
