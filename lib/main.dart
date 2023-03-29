import 'package:flutter/material.dart';
import 'package:hope_application/view/screen/ManageAccount.dart';
import 'package:hope_application/view/screen/ManageSymptomsTraker2.dart';
import 'package:hope_application/view/screen/RecoveryExercise.dart';
import 'package:hope_application/view/screen/RecoveryExerciseModification.dart';
import 'package:hope_application/view/screen/ManageSymptomsTracker1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Page1());
  }
}
