import 'package:flutter_stack_test/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 50,
                height: 50,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
