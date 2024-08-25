import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoply/features/Authentication/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<void> sendPhoneCodeVerification({required String phone}) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (credentials) {},
      verificationFailed: (e){},
      codeSent: (verificationId,resendToken){},
      codeAutoRetrievalTimeout: (verificationId){},
    );
  }
}
