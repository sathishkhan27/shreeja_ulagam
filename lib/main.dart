import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shreeja_ulagam/src/firebase_phone_auth/auth_provider.dart';
import 'package:shreeja_ulagam/src/services/fbs/firebase_options.dart';
import 'package:shreeja_ulagam/src/ui/splash_screen.dart';
import 'package:shreeja_ulagam/src/utils/app_theme.dart';
import 'package:shreeja_ulagam/src/utils/globals.dart';
import 'package:shreeja_ulagam/src/utils/route_generator.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FirebasePhoneAuthProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FirebasePhoneAuthHandler Demo',
        scaffoldMessengerKey: Globals.scaffoldMessengerKey,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: SplashScreen.id,
      ),
    );
  }
}

