import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hope_application/view/screen/Register.dart';
import '../widget/CommonPage/Appbar_title.dart';
import '../widget/CommonPage/Widget_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.userRole}) : super(key: key);
  final String userRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: AppBarTitle(title: "Home Screen"),
        backgroundColor: const Color.fromARGB(244, 250, 250, 250),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Welcome to $userRole Screen",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40),
              ),
            ),
            IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut().then((value) =>
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => RegisterPage())));
                },
                icon: Icon(Icons.close))
          ],
        ),
      ),
    );
  }
}
