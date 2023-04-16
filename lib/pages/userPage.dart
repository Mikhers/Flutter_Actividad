import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String userTxt;
  const UserPage(this.userTxt, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Usuario")),
      body: Center(
        child: Text(userTxt),
      ),
    );
  }
}

