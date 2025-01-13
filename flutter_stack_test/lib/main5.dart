import 'package:date_format/date_format.dart';
import 'package:flutter_stack_test/main.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

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
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150.0),
                    border: Border.all(color: Colors.blue)),
                width: 300,
                height: 300,
              ),
              TimerBuilder.periodic(
                // 특정주기마다 builder를 호출
                const Duration(seconds: 1), // 얼마 주기로 호출할 것인지
                builder: (context) {
                  return Text(
                    formatDate(DateTime.now(), [hh, ':', nn, ':', ss, ' ', am]),
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
