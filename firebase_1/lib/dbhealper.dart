import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Dbhelper {
  signUp(email, password) async {
    try {
      UserCredential _userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      User? authCredential = _userCredential.user;
      if (authCredential!.uid.isNotEmpty) {
        return 'okay';
      } else {
        return 'no data';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {}
  }
}
