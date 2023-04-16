import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_user/pages/userPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Login Users'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _userInput = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Login'),
            Container(padding: const EdgeInsets.fromLTRB(50,0,50,0),
              child: TextField(
              controller: _userInput,
              decoration: const InputDecoration(
                hintText: "Usuario"
              ),
            ),),
            Container(padding: const EdgeInsets.fromLTRB(50,0,50,0), child:
            const TextField(
              decoration: InputDecoration(
                  hintText: "Pasword"
              ),
            ),),

            const SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserPage(_userInput.text)));
              },
              child: const Text('Ingresar'),
            ),

          ],
        ),
      ),
    );
  }
}
