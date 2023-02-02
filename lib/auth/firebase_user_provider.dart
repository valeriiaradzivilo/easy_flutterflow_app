import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EasyFlutterflowAppFirebaseUser {
  EasyFlutterflowAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EasyFlutterflowAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EasyFlutterflowAppFirebaseUser> easyFlutterflowAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EasyFlutterflowAppFirebaseUser>(
      (user) {
        currentUser = EasyFlutterflowAppFirebaseUser(user);
        return currentUser!;
      },
    );
