import 'package:flutter/material.dart';

class RecoveryExerciseModification extends StatelessWidget {
  final String title;
  const RecoveryExerciseModification({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: const Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (cpntext) => const page4()));
              },
              child: const Text("Preparing for surgery exercise"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton(
              child: const Text("Before the surgery exercise"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: const Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: const Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              child: const Text("After the surgery exercise"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
