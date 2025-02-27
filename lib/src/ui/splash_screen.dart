import 'package:flutter/material.dart';
import 'package:shreeja_ulagam/src/ui/authenticate/authentication_screen.dart';
import 'package:shreeja_ulagam/src/ui/home_screen.dart';
import 'package:shreeja_ulagam/src/utils/globals.dart';

import 'common_widgets/custom_loader.dart';

class SplashScreen extends StatefulWidget {
  static const id = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    (() async {
      await Future.delayed(Duration.zero);
      final isLoggedIn = Globals.firebaseUser != null;

      if (!mounted) return;
      Navigator.pushReplacementNamed(
        context,
        isLoggedIn ? HomeScreen.id : AuthenticationScreen.id,
      );
    })();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomLoader(),
      ),
    );
  }
}
