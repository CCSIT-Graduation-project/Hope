// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Page1());
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  //const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Recovery Exercises"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => const page2()));
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 251, 155, 187)),
                child: const Text("Preparing for the surgery exercises"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => const page3()));
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 251, 155, 187)),
                child: const Text("Before the surgery exercises"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => const page4()));
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 251, 155, 187)),
                child: const Text("After the surgery exercises"),
              ),
            ),
          ],
          /*Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (cpntext) => const page2()));
          },
          child: const Text("Move to page 2"),
        ),
        
      ),*/
        ),
      ),
    );
  }
}

// Preparing for the surgery exercises
class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Preparing for the surgery exercises.',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Preparing for the surgery exercises"),
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context, false),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: const [
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/1.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/2.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/3.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/4.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/5.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/6.png')),
                //Image(image: AssetImage('assets/images/preparing.webp')),
              ],
            )));
  }
}

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Before the surgery exercises.',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: const Text("Before the surgery exercises"),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context, false),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: const [
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/a.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/b.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/c.png')),
                Image(
                    image: AssetImage('assets/images/RecoveryExercise/d.png')),
                //Image(image: AssetImage('assets/images/preparing.webp')),
              ],
            )));
  }
}

//After the surgery exercises
class page4 extends StatelessWidget {
  const page4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'After the surgery exercises.',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: const Text("After the surgery exercises."),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context, false),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: const [
                Image(image: AssetImage('assets/images/y.png')),
                Image(image: AssetImage('assets/images/z.png')),
                //Image(image: AssetImage('assets/images/preparing.webp')),
              ],
            )));
  }
}

/*class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Page2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Move to page 2"),
        ),
      ),
    );
  }
}
*/