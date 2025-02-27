import 'package:flutter/material.dart';

import '../firebase_phone_auth/firebase_phone_auth_handler.dart';

class Globals {
  const Globals._();

  static final auth = FirebaseAuth.instance;

  static User? get firebaseUser => auth.currentUser;

  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
}
