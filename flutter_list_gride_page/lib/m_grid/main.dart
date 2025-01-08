import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.builder(
          //
          scrollDirection: Axis.vertical,
          // 그리드의 열 개수를 고정하는 속성
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              //return 키워드 : 실행의 제어권을 반납
              color: Colors.blue,
              child: Center(child: Text('${index}')),
            );
          },
        ),
      ),
    );
  }
}
