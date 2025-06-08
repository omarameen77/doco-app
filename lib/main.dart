import 'package:flutter/material.dart';

void main() {
  runApp(const DocApp());
}

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(

        appBar: AppBar(
          title: const Text('Doctor App'),
          backgroundColor: Colors.blue,
          titleSpacing: 8.0,
          centerTitle: true,
        ),
      ),
    );
  }
}