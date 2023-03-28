import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:refri_mobile/presentation/login/google_oauth_response.dart';

Future<OauthResponse> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  final response = await FirebaseAuth.instance.signInWithCredential(credential);

  return OauthResponse(
      accessToken: response.credential!.accessToken!,
      name: response.user!.displayName!);
}
