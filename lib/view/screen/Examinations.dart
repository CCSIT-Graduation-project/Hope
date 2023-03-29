import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BREAST SELF EXAMINATION.',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("BREAST SELF EXAMINATION"),
            ),
            body: ListView(
              children: [
                Image(image: AssetImage('assets/images/Examinations/1.png')),
                Image(image: AssetImage('assets/images/Examinations/1C.png')),
                Image(image: AssetImage('assets/images/Examinations/2.png')),
                Image(image: AssetImage('assets/images/Examinations/2C.png')),
                Image(image: AssetImage('assets/images/Examinations/3.png')),
                Image(image: AssetImage('assets/images/Examinations/3C.png')),
                Image(image: AssetImage('assets/images/Examinations/4.png')),
                Image(image: AssetImage('assets/images/Examinations/4C.png')),
                Image(image: AssetImage('assets/images/Examinations/5.png')),
                Image(image: AssetImage('assets/images/Examinations/5C.png')),
                Image(image: AssetImage('assets/images/Examinations/6.png')),
                Image(image: AssetImage('assets/images/Examinations/6C.png')),
                Image(image: AssetImage('assets/images/Examinations/7.png')),
                Image(image: AssetImage('assets/images/Examinations/7C.png')),
                Image(image: AssetImage('assets/images/Examinations/8.png')),
                Image(image: AssetImage('assets/images/Examinations/8C.png')),
                Image(image: AssetImage('assets/images/Examinations/9.png')),
                Image(image: AssetImage('assets/images/Examinations/9C.png')),
              ],
            )));
  }
}
