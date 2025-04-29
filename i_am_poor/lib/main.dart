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
          title: const Center(child: Text("I Am Poor")), // Căn giữa tiêu đề
          backgroundColor: Color(0xffd58d7c),
        ),
        backgroundColor: Colors.brown[200],
        body: const Center(
          child: Image(
            image: AssetImage("assets/coal.png"), // Hình ảnh viên than
          ),
        ),
      ),
    );
  }
}
