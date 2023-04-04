import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PenniesFromHeavenFirebaseUser {
  PenniesFromHeavenFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PenniesFromHeavenFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PenniesFromHeavenFirebaseUser> penniesFromHeavenFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PenniesFromHeavenFirebaseUser>(
      (user) {
        currentUser = PenniesFromHeavenFirebaseUser(user);
        return currentUser!;
      },
    );
