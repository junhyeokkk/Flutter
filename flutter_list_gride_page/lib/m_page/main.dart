import 'package:flutter/material.dart';

void main() {
  List<delivery> dels = [
    delivery('배달의민족', 'bemin.jpeg'),
    delivery('쿠팡이츠', 'coupang.jpeg'),
    delivery('요기요', 'yogiyo.jpeg'),
  ];
  runApp(MyApp(dels));
}

class MyApp extends StatelessWidget {
  final List<delivery> dels;
  const MyApp(this.dels, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('배달 어플 고르기'),
          ),
          body: PageView.builder(
            controller: PageController(
              viewportFraction: 0.7,
            ),
            itemCount: dels.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/${dels[index].img}',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    dels[index].name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class delivery {
  final String img;
  final String name;

  delivery(this.name, this.img);
}
