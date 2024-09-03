import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
              child: Text(
            'Maher',
            style: TextStyle(fontSize: 30),
          )),
        ),
      ),
    );
  }
}
