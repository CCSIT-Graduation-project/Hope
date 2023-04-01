import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:hope_application/view/screen/ManageAccount.dart';
import 'package:hope_application/view/screen/ManageSymptomsTraker2.dart';
import 'package:hope_application/view/screen/RecoveryExercise.dart';
import 'package:hope_application/view/screen/RecoveryExerciseModification.dart';
import 'package:hope_application/view/screen/ManageSymptomsTracker1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: RecoveryExercise(
      title: 'a',
    ));
  }
}
