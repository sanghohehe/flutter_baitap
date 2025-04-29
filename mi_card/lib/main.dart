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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('assets/profile.jpg'), // Thay bằng ảnh của bạn
              ),
              const Text(
                'Tan Tinh',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              const SizedBox(
                  height: 20, width: 150, child: Divider(color: Colors.white)),
              Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.teal),
                  title: const Text(
                    '+84 123 456 789',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.teal),
                  title: const Text(
                    'tantinh@email.com',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
