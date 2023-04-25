import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hope/view/screen/Onboarding.dart';
import 'package:hope/view/screen/RadiologistHome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const RadiologistHomeScreen(
      userRole: 'Radiologist',
    ));
  }
}
