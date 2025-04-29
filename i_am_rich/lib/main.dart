import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("I Am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.red,
        body: const Center(
          child: Image(
            image: AssetImage('assets/diamond.png'), // Đảm bảo bạn có hình này
          ),
        ),
      ),
    );
  }
}
