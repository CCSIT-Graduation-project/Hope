import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hope/view/screen/AddMammogram.dart';
import 'package:hope/view/screen/AdminHome.dart';
import 'package:hope/view/screen/Onboarding.dart';
import 'package:hope/view/screen/PatientHome.dart';
import 'package:hope/view/screen/RadiologistHome.dart';
import 'package:hope/view/screen/SymptomTracker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Onboarding());
  }
}
