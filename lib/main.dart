import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testauthentication/features/authentication/screen/login.dart';


FirebaseAnalytics analytics = FirebaseAnalytics.instance;
void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  initialiseFirebase();
  runApp(
    const MyApp(),
  );
}

void initialiseFirebase() async {
  await Firebase.initializeApp();
  await analytics.logAppOpen();
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Sign In',
      home: SignInDemo(),
    );
  }
}
