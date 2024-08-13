import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthModelView extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? user;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void googleSignIn() async {
    final GoogleSignInAccount? myGoogleSignInAcount =
        await _googleSignIn.signIn();
    if (myGoogleSignInAcount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await myGoogleSignInAcount.authentication;
    }
  }
}
