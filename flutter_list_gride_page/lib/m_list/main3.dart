import 'package:flutter/material.dart';

// ListView 와 ListTile 위젯을 살펴 보자
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
        // 구분선이 있는 리스트 뷰
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset('assets/pizza.jpeg'),
                  title: Center(child: Text('title ${index + 1}')),
                  subtitle: Center(child: Text('sub ..,, ')),
                  trailing: Icon(Icons.more_horiz_sharp),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey, // 구분선 색
                thickness: 0.2, // 구분선 굵기
              ); // Divider 구분선 위젯
            },
            itemCount: 20),
      ),
    );
  }
}
