import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_wash_car/auth/logIn.dart';
import 'package:test_wash_car/auth/signUp.dart';
import 'package:test_wash_car/firebase_options.dart';
import 'package:test_wash_car/pages/HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'arabicFont'),
      home: Login(),
      routes: {
        "signUp": (context) => signUp(),
        "HomePage": (context) => HomePage(),
      },
    );
  }
}
