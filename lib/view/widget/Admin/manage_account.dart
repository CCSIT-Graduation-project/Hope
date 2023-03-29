import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final String title;
  const Account({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              child: Text("Admin"),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              child: Text("pationt"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
