import 'package:fash_news/pages/home.dart';
import 'package:fash_news/pages/publishers.dart';
import 'package:fash_news/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp()
    );
  }
}
