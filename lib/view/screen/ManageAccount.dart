import 'package:flutter/material.dart';

import '../widget/Admin/manage_account.dart';

class ManageAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 167, 188),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 220, 198, 214),
          title: Text('Manage account'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),

            // do something
          )),
      body: Account(
        title: 'Manage account',
      ),
    ));
  }
}
