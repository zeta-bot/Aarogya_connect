import 'package:firebase_auth/firebase_auth.dart';

Future<void> verifyPhone(String phoneNumber) async {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  await _auth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (PhoneAuthCredential credential) async {
      // Auto-retrieval of the SMS code has already happened.
      // Use the credential to sign in the user.
    },
    verificationFailed: (FirebaseAuthException e) {
      if (e.code == 'invalid-phone-number') {
        print('The provided phone number is not valid.');
      }
      // Handle other verification errors.
    },
    codeSent: (String verificationId, int? resendToken) {
      // Save the verificationId to use it later to build the credential.
      // Typically, this is stored with your user's data.
    },
    codeAutoRetrievalTimeout: (String verificationId) {
      // Auto-retrieval of the SMS code timed out.
    },
  );
}

Future<void> signInWithPhoneCredential(PhoneAuthCredential credential) async {
  try {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth.signInWithCredential(credential);
  } catch (e) {
    print('Error:$e');
  }
}
